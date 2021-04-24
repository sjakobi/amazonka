{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TypeFamilies #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.IoT.DescribeThingType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets information about the specified thing type.
module Network.AWS.IoT.DescribeThingType
  ( -- * Creating a Request
    describeThingType,
    DescribeThingType,

    -- * Request Lenses
    dttThingTypeName,

    -- * Destructuring the Response
    describeThingTypeResponse,
    DescribeThingTypeResponse,

    -- * Response Lenses
    dttrtrsThingTypeProperties,
    dttrtrsThingTypeMetadata,
    dttrtrsThingTypeId,
    dttrtrsThingTypeARN,
    dttrtrsThingTypeName,
    dttrtrsResponseStatus,
  )
where

import Network.AWS.IoT.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | The input for the DescribeThingType operation.
--
--
--
-- /See:/ 'describeThingType' smart constructor.
newtype DescribeThingType = DescribeThingType'
  { _dttThingTypeName ::
      Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'DescribeThingType' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dttThingTypeName' - The name of the thing type.
describeThingType ::
  -- | 'dttThingTypeName'
  Text ->
  DescribeThingType
describeThingType pThingTypeName_ =
  DescribeThingType'
    { _dttThingTypeName =
        pThingTypeName_
    }

-- | The name of the thing type.
dttThingTypeName :: Lens' DescribeThingType Text
dttThingTypeName = lens _dttThingTypeName (\s a -> s {_dttThingTypeName = a})

instance AWSRequest DescribeThingType where
  type Rs DescribeThingType = DescribeThingTypeResponse
  request = get ioT
  response =
    receiveJSON
      ( \s h x ->
          DescribeThingTypeResponse'
            <$> (x .?> "thingTypeProperties")
            <*> (x .?> "thingTypeMetadata")
            <*> (x .?> "thingTypeId")
            <*> (x .?> "thingTypeArn")
            <*> (x .?> "thingTypeName")
            <*> (pure (fromEnum s))
      )

instance Hashable DescribeThingType

instance NFData DescribeThingType

instance ToHeaders DescribeThingType where
  toHeaders = const mempty

instance ToPath DescribeThingType where
  toPath DescribeThingType' {..} =
    mconcat ["/thing-types/", toBS _dttThingTypeName]

instance ToQuery DescribeThingType where
  toQuery = const mempty

-- | The output for the DescribeThingType operation.
--
--
--
-- /See:/ 'describeThingTypeResponse' smart constructor.
data DescribeThingTypeResponse = DescribeThingTypeResponse'
  { _dttrtrsThingTypeProperties ::
      !( Maybe
           ThingTypeProperties
       ),
    _dttrtrsThingTypeMetadata ::
      !( Maybe
           ThingTypeMetadata
       ),
    _dttrtrsThingTypeId ::
      !(Maybe Text),
    _dttrtrsThingTypeARN ::
      !(Maybe Text),
    _dttrtrsThingTypeName ::
      !(Maybe Text),
    _dttrtrsResponseStatus ::
      !Int
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'DescribeThingTypeResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dttrtrsThingTypeProperties' - The ThingTypeProperties contains information about the thing type including description, and a list of searchable thing attribute names.
--
-- * 'dttrtrsThingTypeMetadata' - The ThingTypeMetadata contains additional information about the thing type including: creation date and time, a value indicating whether the thing type is deprecated, and a date and time when it was deprecated.
--
-- * 'dttrtrsThingTypeId' - The thing type ID.
--
-- * 'dttrtrsThingTypeARN' - The thing type ARN.
--
-- * 'dttrtrsThingTypeName' - The name of the thing type.
--
-- * 'dttrtrsResponseStatus' - -- | The response status code.
describeThingTypeResponse ::
  -- | 'dttrtrsResponseStatus'
  Int ->
  DescribeThingTypeResponse
describeThingTypeResponse pResponseStatus_ =
  DescribeThingTypeResponse'
    { _dttrtrsThingTypeProperties =
        Nothing,
      _dttrtrsThingTypeMetadata = Nothing,
      _dttrtrsThingTypeId = Nothing,
      _dttrtrsThingTypeARN = Nothing,
      _dttrtrsThingTypeName = Nothing,
      _dttrtrsResponseStatus = pResponseStatus_
    }

-- | The ThingTypeProperties contains information about the thing type including description, and a list of searchable thing attribute names.
dttrtrsThingTypeProperties :: Lens' DescribeThingTypeResponse (Maybe ThingTypeProperties)
dttrtrsThingTypeProperties = lens _dttrtrsThingTypeProperties (\s a -> s {_dttrtrsThingTypeProperties = a})

-- | The ThingTypeMetadata contains additional information about the thing type including: creation date and time, a value indicating whether the thing type is deprecated, and a date and time when it was deprecated.
dttrtrsThingTypeMetadata :: Lens' DescribeThingTypeResponse (Maybe ThingTypeMetadata)
dttrtrsThingTypeMetadata = lens _dttrtrsThingTypeMetadata (\s a -> s {_dttrtrsThingTypeMetadata = a})

-- | The thing type ID.
dttrtrsThingTypeId :: Lens' DescribeThingTypeResponse (Maybe Text)
dttrtrsThingTypeId = lens _dttrtrsThingTypeId (\s a -> s {_dttrtrsThingTypeId = a})

-- | The thing type ARN.
dttrtrsThingTypeARN :: Lens' DescribeThingTypeResponse (Maybe Text)
dttrtrsThingTypeARN = lens _dttrtrsThingTypeARN (\s a -> s {_dttrtrsThingTypeARN = a})

-- | The name of the thing type.
dttrtrsThingTypeName :: Lens' DescribeThingTypeResponse (Maybe Text)
dttrtrsThingTypeName = lens _dttrtrsThingTypeName (\s a -> s {_dttrtrsThingTypeName = a})

-- | -- | The response status code.
dttrtrsResponseStatus :: Lens' DescribeThingTypeResponse Int
dttrtrsResponseStatus = lens _dttrtrsResponseStatus (\s a -> s {_dttrtrsResponseStatus = a})

instance NFData DescribeThingTypeResponse
