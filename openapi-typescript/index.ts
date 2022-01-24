import { operations } from './schema';

type showPetById = operations['showPetById'];

const response = <K extends keyof showPetById['responses']>(
  statusCode: K,
  body: showPetById['responses'][K]['content']['application/json']
) => {};
