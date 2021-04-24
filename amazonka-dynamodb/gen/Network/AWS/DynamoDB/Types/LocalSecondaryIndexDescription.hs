{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.DynamoDB.Types.LocalSecondaryIndexDescription
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.DynamoDB.Types.LocalSecondaryIndexDescription where

import Network.AWS.DynamoDB.Types.KeySchemaElement
import Network.AWS.DynamoDB.Types.Projection
import Network.AWS.Lens
import Network.AWS.Prelude

-- | Represents the properties of a local secondary index.
--
--
--
-- /See:/ 'localSecondaryIndexDescription' smart constructor.
data LocalSecondaryIndexDescription = LocalSecondaryIndexDescription'
  { _lsidIndexName ::
      !( Maybe
           Text
       ),
    _lsidKeySchema ::
      !( Maybe
           ( List1
               KeySchemaElement
           )
       ),
    _lsidIndexARN ::
      !( Maybe
           Text
       ),
    _lsidProjection ::
      !( Maybe
           Projection
       ),
    _lsidIndexSizeBytes ::
      !( Maybe
           Integer
       ),
    _lsidItemCount ::
      !( Maybe
           Integer
       )
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'LocalSecondaryIndexDescription' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lsidIndexName' - Represents the name of the local secondary index.
--
-- * 'lsidKeySchema' - The complete key schema for the local secondary index, consisting of one or more pairs of attribute names and key types:     * @HASH@ - partition key     * @RANGE@ - sort key
--
-- * 'lsidIndexARN' - The Amazon Resource Name (ARN) that uniquely identifies the index.
--
-- * 'lsidProjection' - Represents attributes that are copied (projected) from the table into the global secondary index. These are in addition to the primary key attributes and index key attributes, which are automatically projected.
--
-- * 'lsidIndexSizeBytes' - The total size of the specified index, in bytes. DynamoDB updates this value approximately every six hours. Recent changes might not be reflected in this value.
--
-- * 'lsidItemCount' - The number of items in the specified index. DynamoDB updates this value approximately every six hours. Recent changes might not be reflected in this value.
localSecondaryIndexDescription ::
  LocalSecondaryIndexDescription
localSecondaryIndexDescription =
  LocalSecondaryIndexDescription'
    { _lsidIndexName =
        Nothing,
      _lsidKeySchema = Nothing,
      _lsidIndexARN = Nothing,
      _lsidProjection = Nothing,
      _lsidIndexSizeBytes = Nothing,
      _lsidItemCount = Nothing
    }

-- | Represents the name of the local secondary index.
lsidIndexName :: Lens' LocalSecondaryIndexDescription (Maybe Text)
lsidIndexName = lens _lsidIndexName (\s a -> s {_lsidIndexName = a})

-- | The complete key schema for the local secondary index, consisting of one or more pairs of attribute names and key types:     * @HASH@ - partition key     * @RANGE@ - sort key
lsidKeySchema :: Lens' LocalSecondaryIndexDescription (Maybe (NonEmpty KeySchemaElement))
lsidKeySchema = lens _lsidKeySchema (\s a -> s {_lsidKeySchema = a}) . mapping _List1

-- | The Amazon Resource Name (ARN) that uniquely identifies the index.
lsidIndexARN :: Lens' LocalSecondaryIndexDescription (Maybe Text)
lsidIndexARN = lens _lsidIndexARN (\s a -> s {_lsidIndexARN = a})

-- | Represents attributes that are copied (projected) from the table into the global secondary index. These are in addition to the primary key attributes and index key attributes, which are automatically projected.
lsidProjection :: Lens' LocalSecondaryIndexDescription (Maybe Projection)
lsidProjection = lens _lsidProjection (\s a -> s {_lsidProjection = a})

-- | The total size of the specified index, in bytes. DynamoDB updates this value approximately every six hours. Recent changes might not be reflected in this value.
lsidIndexSizeBytes :: Lens' LocalSecondaryIndexDescription (Maybe Integer)
lsidIndexSizeBytes = lens _lsidIndexSizeBytes (\s a -> s {_lsidIndexSizeBytes = a})

-- | The number of items in the specified index. DynamoDB updates this value approximately every six hours. Recent changes might not be reflected in this value.
lsidItemCount :: Lens' LocalSecondaryIndexDescription (Maybe Integer)
lsidItemCount = lens _lsidItemCount (\s a -> s {_lsidItemCount = a})

instance FromJSON LocalSecondaryIndexDescription where
  parseJSON =
    withObject
      "LocalSecondaryIndexDescription"
      ( \x ->
          LocalSecondaryIndexDescription'
            <$> (x .:? "IndexName")
            <*> (x .:? "KeySchema")
            <*> (x .:? "IndexArn")
            <*> (x .:? "Projection")
            <*> (x .:? "IndexSizeBytes")
            <*> (x .:? "ItemCount")
      )

instance Hashable LocalSecondaryIndexDescription

instance NFData LocalSecondaryIndexDescription
