{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.DynamoDB.Types.LocalSecondaryIndexInfo
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.DynamoDB.Types.LocalSecondaryIndexInfo where

import Network.AWS.DynamoDB.Types.KeySchemaElement
import Network.AWS.DynamoDB.Types.Projection
import Network.AWS.Lens
import Network.AWS.Prelude

-- | Represents the properties of a local secondary index for the table when the backup was created.
--
--
--
-- /See:/ 'localSecondaryIndexInfo' smart constructor.
data LocalSecondaryIndexInfo = LocalSecondaryIndexInfo'
  { _lsiiIndexName ::
      !(Maybe Text),
    _lsiiKeySchema ::
      !( Maybe
           ( List1
               KeySchemaElement
           )
       ),
    _lsiiProjection ::
      !(Maybe Projection)
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'LocalSecondaryIndexInfo' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lsiiIndexName' - Represents the name of the local secondary index.
--
-- * 'lsiiKeySchema' - The complete key schema for a local secondary index, which consists of one or more pairs of attribute names and key types:     * @HASH@ - partition key     * @RANGE@ - sort key
--
-- * 'lsiiProjection' - Represents attributes that are copied (projected) from the table into the global secondary index. These are in addition to the primary key attributes and index key attributes, which are automatically projected.
localSecondaryIndexInfo ::
  LocalSecondaryIndexInfo
localSecondaryIndexInfo =
  LocalSecondaryIndexInfo'
    { _lsiiIndexName = Nothing,
      _lsiiKeySchema = Nothing,
      _lsiiProjection = Nothing
    }

-- | Represents the name of the local secondary index.
lsiiIndexName :: Lens' LocalSecondaryIndexInfo (Maybe Text)
lsiiIndexName = lens _lsiiIndexName (\s a -> s {_lsiiIndexName = a})

-- | The complete key schema for a local secondary index, which consists of one or more pairs of attribute names and key types:     * @HASH@ - partition key     * @RANGE@ - sort key
lsiiKeySchema :: Lens' LocalSecondaryIndexInfo (Maybe (NonEmpty KeySchemaElement))
lsiiKeySchema = lens _lsiiKeySchema (\s a -> s {_lsiiKeySchema = a}) . mapping _List1

-- | Represents attributes that are copied (projected) from the table into the global secondary index. These are in addition to the primary key attributes and index key attributes, which are automatically projected.
lsiiProjection :: Lens' LocalSecondaryIndexInfo (Maybe Projection)
lsiiProjection = lens _lsiiProjection (\s a -> s {_lsiiProjection = a})

instance FromJSON LocalSecondaryIndexInfo where
  parseJSON =
    withObject
      "LocalSecondaryIndexInfo"
      ( \x ->
          LocalSecondaryIndexInfo'
            <$> (x .:? "IndexName")
            <*> (x .:? "KeySchema")
            <*> (x .:? "Projection")
      )

instance Hashable LocalSecondaryIndexInfo

instance NFData LocalSecondaryIndexInfo
