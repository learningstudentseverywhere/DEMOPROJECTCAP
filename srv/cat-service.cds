using {test as my} from '../db/data-model';


service StudentService{
    entity Students as projection on my.Students;
    entity Teachers as projection on my.Teachers;
}