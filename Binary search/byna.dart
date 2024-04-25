class BinarySearch{
  List <int>?arr;
  int? target;

  BinarySearch(List<int>this.arr, int this.target);

  int search(){
    int str=0;
    int end = arr!.length -1;

   

   while(str<end){
    int mid = str + (end-str)~/2;
    if (arr![mid]==target){
      return mid;
    }else if(target!<=arr![mid]){
      end = mid -1;
    }else if(target!>=arr![mid]){
      str = mid+1;

    }
   }
   return -1;
  }

}

void main(){

  BinarySearch list = BinarySearch([1,5,8,0,3,2], 3);
print(  list.search());
}