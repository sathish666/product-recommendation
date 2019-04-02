package mapred;

import java.io.IOException;

import org.apache.hadoop.io.IntWritable;
import org.apache.hadoop.io.Text;
import org.apache.hadoop.mapreduce.Reducer;

public class reducing extends Reducer<Text, Text, Text, Text> {

	public void reduce(Text _key, Iterable<Text>  values, Context context) throws IOException, InterruptedException {
		// process values
		int i=0;
		String valstr,valstr1,valstr2;
		int pos = 0;
		int neg = 0;
		for (Text val : values) {
			
			valstr=val.toString();
			valstr1=valstr.substring(0, 1);

			int result = Integer.parseInt(valstr1);
			pos=pos+result;
			
			valstr2=valstr.substring(2, 3);

			int result1 = Integer.parseInt(valstr2);
			neg=neg+result1;
			

		}
		
		String app;
		app=pos+","+neg;
		Text wr=new Text(app);
		
		context.write(_key, wr);
	}

}
