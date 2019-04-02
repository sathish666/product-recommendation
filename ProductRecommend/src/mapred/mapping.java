package mapred;

import java.io.BufferedReader;
import java.io.FileReader;
import java.io.IOException;
import java.util.HashSet;

import org.apache.hadoop.io.IntWritable;
import org.apache.hadoop.io.LongWritable;
import org.apache.hadoop.io.Text;
import org.apache.hadoop.mapreduce.Mapper;

public class mapping extends Mapper<LongWritable, Text, Text, Text> {
	HashSet<String> pos = null;
	HashSet<String> neg = null;
	@Override
	protected void cleanup(Mapper<LongWritable, Text, Text, Text>.Context context)
			throws IOException, InterruptedException {
		
	}

	@Override
	protected void setup(Mapper<LongWritable, Text, Text, Text>.Context context)
			throws IOException, InterruptedException {
		pos = new HashSet<>();
		FileReader fr=new FileReader("/home/hadoop/dataset/positive.txt");
		BufferedReader br=new BufferedReader(fr);
		String l=" ";
	
		while((l=br.readLine())!=null)
		{
			pos.add(l.trim());
			
		}
		
		neg = new HashSet<>();
		FileReader fr1=new FileReader("/home/hadoop/dataset/negative.txt");
		BufferedReader br1=new BufferedReader(fr);
		String l1=" ";
		while((l1=br.readLine())!=null)
		{
			
			neg.add(l1.trim());
			
		}
		
	}

	public void map(LongWritable ikey, Text ivalue, Context context) throws IOException, InterruptedException {

		int i,j,k,p=0,q=0,positive= 0,negative= 0;
		String s=ivalue.toString();
		String spl[];
		spl=s.split("\t");
		Text t=new Text();
		Text in=new Text();
		
		
		
		String cmt[] = spl[1].split(" ");
		
		for(String cmt1 : cmt) {
			
			
			if(pos.contains(cmt1)) {
				positive++;
				
			}

			if(neg.contains(cmt1)) {
				negative++;
							
			}
			
			
		}
		
		Text t1=new Text();Text t2=new Text();
		System.out.println("positive = "+positive+" negative = "+negative);
		String append;
		append=positive+","+negative;
		t1.set(spl[0]);
		t2.set(append);
		context.write(t1, t2);
		System.out.println(append);

		
		
		
		
			
			
		
		
		
		
		
		//1	5,6
		//1 1,1
		//1 4,2
		
		//1  (5,6    1,1    4,2)
		
		
		/*String app[]=null;
		j=0;
		for(i=0;i<positive.length;i++)
		{
			app[i]=positive[i]+","+negative[i];
		    t2.set(app[i]);
		    t1.set(spl[j]);
			context.write(t1, t2);
			j=j+2;
		}*/
		
		
		
		
				
	}

}
