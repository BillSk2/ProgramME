package ProgramME;
import java.util.*;


public class CoursePrint {

	public String[][] TablePrint(List<Course> courses)throws Exception{

	String table[][] = new String[7][7];
	table[0][0]="DMST";
	table[0][1]="Monday";
	table[0][2]="Tuesday";
	table[0][3]="Wednesday";
	table[0][4]="Thrusday";
	table[0][5]="Friday";
	table[1][0]="09:00-11:00";
	table[2][0]="11:00-13:00";
	table[3][0]="13:00-15:00";
	table[4][0]="15:00-17:00";
	table[5][0]="17:00-19:00";
	table[6][0]="19:00-21:00";
	CourseDAO codao=new CourseDAO();
	for(int i =1;i<7;i++){
		for(int j = 1;j<7;j++){
			table[i][j]=" ";
			}
		}


	for (Course course : courses){
		ArrayList<Integer> tid = codao.getProgramId(course.getCourseID());
	for (int i : tid){
		if(i==1){
			table[1][1]+=course.getCourseName()+"/ ";
			}
		if(i==2){
			table[1][2]+=course.getCourseName()+"/ ";}
		if(i==3){
			table[1][3]+=course.getCourseName()+"/ ";}
		if(i==4){
			table[1][4]+=course.getCourseName()+"/ ";}
		if(i==5){
			table[1][5]+=course.getCourseName()+"/ ";}
		if(i==6){
			table[2][1]+=course.getCourseName()+"/ ";
			}
		if(i==7){
			table[2][2]+=course.getCourseName()+"/ ";}
		if(i==8){
			table[2][3]+=course.getCourseName()+"/ ";}
		if(i==9){
			table[2][4]+=course.getCourseName()+"/ ";}
		if(i==10){
			table[2][5]+=course.getCourseName()+"/ ";}
		if(i==11){
			table[3][1]+=course.getCourseName()+"/ ";}
		if(i==12){
			table[3][2]+=course.getCourseName()+"/ ";}
		if(i==13){
			table[3][3]+=course.getCourseName()+"/ ";}
		if(i==14){
			table[3][4]+=course.getCourseName()+"/ ";}
		if(i==15){
			table[3][5]+=course.getCourseName()+"/ ";}
		if(i==16){
			table[4][1]+=course.getCourseName()+"/ ";}
		if(i==17){
			table[4][2]+=course.getCourseName()+"/ ";}
		if(i==18){
			table[4][3]+=course.getCourseName()+"/ ";}
		if(i==19){
			table[4][4]+=course.getCourseName()+"/ ";}
		if(i==20){
			table[4][5]+=course.getCourseName()+"/ ";}
		if(i==21){
			table[5][1]+=course.getCourseName()+"/ ";}
		if(i==22){
			table[5][2]+=course.getCourseName()+"/ ";}
		if(i==23){
			table[5][3]+=course.getCourseName()+"/ ";}
		if(i==24){
			table[5][4]+=course.getCourseName()+"/ ";}
		if(i==25){
			table[5][5]+=course.getCourseName()+"/ ";}
		if(i==26){
			table[6][1]+=course.getCourseName()+"/ ";}
		if(i==27){
			table[6][2]+=course.getCourseName()+"/ ";}
		if(i==28){
			table[6][3]+=course.getCourseName()+"/ ";}
		if(i==29){
			table[6][4]+=course.getCourseName()+"/ ";}
		if(i==30){
			table[6][5]+=course.getCourseName()+"/ ";}


		}
	}
return table;}
}

