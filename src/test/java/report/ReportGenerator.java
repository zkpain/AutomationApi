package report;

import net.masterthought.cucumber.Configuration;
import net.masterthought.cucumber.ReportBuilder;

import java.io.File;
import java.util.ArrayList;
import java.util.List;

public class ReportGenerator {
    public static void main(String[]args){
        String path="D:\\REPOS GIT\\MOBILE\\ApiAutomation\\build\\reports\\cucumber\\";

        File reportOutPut= new File(path+"finalReportAPI");

        List<String> jsonFiles = new ArrayList<>();
        jsonFiles.add(path+"report.json");

        Configuration configuration =  new Configuration(reportOutPut,"ApiAutomation");
        configuration.setBuildNumber("v1.0");
        configuration.addClassifications("SO","Windows");
        configuration.addClassifications("Owner","Kevin");
        configuration.addClassifications("Branch","Master");
        configuration.addClassifications("Type Report","Local");

        ReportBuilder reportBuilder = new ReportBuilder(jsonFiles,configuration);
        reportBuilder.generateReports();
    }

}
