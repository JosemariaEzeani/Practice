package RecommendationSystem;

public enum SystemState {

    GREEN("ACTIVE"), RED("INACTIVE");
    private final String state;

    private SystemState(String state){
        this.state = state;
    }

    public String getState() {
        return state;
    }
}
