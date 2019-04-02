package mapred;

import org.apache.hadoop.conf.Configuration;
import org.apache.hadoop.fs.Path;
import org.apache.hadoop.io.Text;
import org.apache.hadoop.mapreduce.Job;
import org.apache.hadoop.mapreduce.Mapper;
import org.apache.hadoop.mapreduce.Reducer;
import org.apache.hadoop.mapreduce.lib.input.FileInputFormat;
import org.apache.hadoop.mapreduce.lib.output.FileOutputFormat;

public class Driver {

	public static void main(String[] args) throws Exception {
		Configuration conf = new Configuration();
		Job job = Job.getInstance(conf, "JobName");
		job.setJarByClass(mapred.Driver.class);
		// TODO: specify a mapper
		job.setMapperClass(mapping.class);
		// TODO: specify a reducer
		job.setReducerClass(reducing.class);

		// TODO: specify output types
		job.setOutputKeyClass(Text.class);
		job.setOutputValueClass(Text.class);

		// TODO: specify input and output DIRECTORIES (not files)
		
		FileInputFormat.setInputPaths(job, new Path("hdfs://localhost:9000/commentbox"));
		FileOutputFormat.setOutputPath(job, new Path("hdfs://localhost:9000/output"));

		if (!job.waitForCompletion(true))
			return;
	}

}
