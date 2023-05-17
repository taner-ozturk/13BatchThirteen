public with sharing class WrapperExp1 {
    public Datawrapper data;
    public SupportWrapper support;

    public class Datawrapper{
        public Integer id;
        public String email;
        public String first_name;
        public String last_name;
        public String avatar;
    }

    public class SupportWrapper{
        public String url;
        public String text;
    }
}