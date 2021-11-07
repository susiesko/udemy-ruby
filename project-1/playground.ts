type typeA = {
  firstName: string;
  lastName: string;
  age: number;
  middleName: string;
};

type typeB = {
  firstName: string;
  lastName: string;
  age: number;
  location: string;
};
type UnionType = typeA | typeB;
type IntersectType = typeA & typeB;

type foo = number | string;

const a: foo = 0;
const b: foo = '';

let c: foo = 0;
c = '';

if (typeof c === 'number') {
  c.toFixed(2);
}

const variable1: UnionType = {
  firstName: 'string',
  lastName: 'string',
  age: 1,
  location: '',
  middleName: '',
};

const variable2: IntersectType = {
  firstName: 'string',
  lastName: 'string',
  age: 1,
  location: '',
  middleName: '',
};

variable1.middleName = '';
variable1.age = 2;

variable2.middleName = '';
