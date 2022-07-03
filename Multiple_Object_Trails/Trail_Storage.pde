//This will act as a storage for all trails
//The client will add trails to a "bucket: with its corresponding time until burnout
//At each frame the trail storage will show each trail position
//After that it will shift all trail positions down one position
//Once a buckets position is < 0, all data in that bucket will be erased and it will no longer be show.

//The buckets will be made of an arrayList that is X positions long. The X will refer to the longest amount of time a trail can stay alive
//At each frame we will remove the 0th position of the arrayList and add one position to the end
//Then we will add all the trails from each object to their corresponding buckets

ArrayList<ArrayList<Trail>> trails;

class Trail_Storage{
  public Trail_Storage(int maxTrailTime){    
    trails = new ArrayList<ArrayList<Trail>>();
    //Instantiate all of our trail arrayLists
    for (int i = 0; i <= maxTrailTime; i++){
      trails.add(new ArrayList<Trail>());  
    }
  }
  
  void addTrail(Trail trail){
    trails.get(trail.time).add(trail);  
  }
  
  void showAll(){
    for (ArrayList<Trail> AT : trails){
      for (Trail t : AT){
        t.show();
      }
    }
  }
  
  void moveDown(){
    trails.remove(0);
    trails.add(new ArrayList<Trail>());
  }
}
