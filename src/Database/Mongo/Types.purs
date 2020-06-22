module Database.Mongo.Types where

import Data.Nullable (Nullable)
import Database.Mongo.ReadConcern (ReadConcern)
import Database.Mongo.ReadPreference (ReadPreference)
import Database.Mongo.Sort (Sort)
import Database.Mongo.WriteConcern (WriteConcern)
import Database.Mongo.ObjectId (ObjectId)

type MongoError =
  { code :: Nullable Number
  , errmsg :: Nullable String
  }

type InsertOneResult =
  { success :: Boolean
  , insertedId :: ObjectId
  }

type InsertManyResult =
  { success :: Boolean
  , insertedCount :: Int
  }

type UpdateResult =
  { success :: Boolean
  }

type WriteError =
  { code :: Int
  , index :: Int
  , errmsg :: String
  }

type WriteConcernError =
  { code :: Int
  , errmsg :: String
  }

type SessionOptions =
  { causalConsistency :: Nullable Boolean
  , defaultTransactionOptions :: Nullable TransactionOptions
  }

type TransactionOptions =
  { readConcern :: ReadConcern
  , writeConcern :: WriteConcern
  , readPreference :: ReadPreference
  }

type DbCreateOptions =
  { authSource :: Nullable String
  , forceServerObjectId :: Nullable Boolean
  , readConcern :: Nullable ReadConcern
  , bufferMaxEntries :: Nullable Number
  }

type TextQuery =
  { search :: String
  , language :: Nullable String
  , caseSensitive :: Nullable Boolean
  , diacraticSensitive :: Nullable Boolean
  }

type FindOptions =
  { limit :: Nullable Int
  , skip :: Nullable Int
  , sort :: Nullable (Array Sort)
  }

type CountOptions =
  { limit :: Nullable Int
  , maxTimeMS :: Nullable Int
  , skip :: Nullable Int
  , hint :: Nullable String
  }

type AggregationOptions =
  { explain :: Nullable Boolean
  , allowDiskUse :: Nullable Boolean
  , cursor :: Nullable { batchSize :: Int }
  , maxTimeMS :: Nullable Int
  , readConcern :: Nullable { level :: ReadConcern }
  , hint :: Nullable String
  }
