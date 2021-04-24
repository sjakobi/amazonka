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
-- Module      : Network.AWS.IoT.DescribeDimension
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Provides details about a dimension that is defined in your AWS account.
module Network.AWS.IoT.DescribeDimension
  ( -- * Creating a Request
    describeDimension,
    DescribeDimension,

    -- * Request Lenses
    ddName,

    -- * Destructuring the Response
    describeDimensionResponse,
    DescribeDimensionResponse,

    -- * Response Lenses
    ddrrsLastModifiedDate,
    ddrrsCreationDate,
    ddrrsArn,
    ddrrsName,
    ddrrsType,
    ddrrsStringValues,
    ddrrsResponseStatus,
  )
where

import Network.AWS.IoT.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'describeDimension' smart constructor.
newtype DescribeDimension = DescribeDimension'
  { _ddName ::
      Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'DescribeDimension' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ddName' - The unique identifier for the dimension.
describeDimension ::
  -- | 'ddName'
  Text ->
  DescribeDimension
describeDimension pName_ =
  DescribeDimension' {_ddName = pName_}

-- | The unique identifier for the dimension.
ddName :: Lens' DescribeDimension Text
ddName = lens _ddName (\s a -> s {_ddName = a})

instance AWSRequest DescribeDimension where
  type Rs DescribeDimension = DescribeDimensionResponse
  request = get ioT
  response =
    receiveJSON
      ( \s h x ->
          DescribeDimensionResponse'
            <$> (x .?> "lastModifiedDate")
            <*> (x .?> "creationDate")
            <*> (x .?> "arn")
            <*> (x .?> "name")
            <*> (x .?> "type")
            <*> (x .?> "stringValues")
            <*> (pure (fromEnum s))
      )

instance Hashable DescribeDimension

instance NFData DescribeDimension

instance ToHeaders DescribeDimension where
  toHeaders = const mempty

instance ToPath DescribeDimension where
  toPath DescribeDimension' {..} =
    mconcat ["/dimensions/", toBS _ddName]

instance ToQuery DescribeDimension where
  toQuery = const mempty

-- | /See:/ 'describeDimensionResponse' smart constructor.
data DescribeDimensionResponse = DescribeDimensionResponse'
  { _ddrrsLastModifiedDate ::
      !(Maybe POSIX),
    _ddrrsCreationDate ::
      !(Maybe POSIX),
    _ddrrsArn ::
      !(Maybe Text),
    _ddrrsName ::
      !(Maybe Text),
    _ddrrsType ::
      !( Maybe
           DimensionType
       ),
    _ddrrsStringValues ::
      !( Maybe
           (List1 Text)
       ),
    _ddrrsResponseStatus ::
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

-- | Creates a value of 'DescribeDimensionResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ddrrsLastModifiedDate' - The date the dimension was last modified.
--
-- * 'ddrrsCreationDate' - The date the dimension was created.
--
-- * 'ddrrsArn' - The Amazon Resource Name (ARN) for the dimension.
--
-- * 'ddrrsName' - The unique identifier for the dimension.
--
-- * 'ddrrsType' - The type of the dimension.
--
-- * 'ddrrsStringValues' - The value or list of values used to scope the dimension. For example, for topic filters, this is the pattern used to match the MQTT topic name.
--
-- * 'ddrrsResponseStatus' - -- | The response status code.
describeDimensionResponse ::
  -- | 'ddrrsResponseStatus'
  Int ->
  DescribeDimensionResponse
describeDimensionResponse pResponseStatus_ =
  DescribeDimensionResponse'
    { _ddrrsLastModifiedDate =
        Nothing,
      _ddrrsCreationDate = Nothing,
      _ddrrsArn = Nothing,
      _ddrrsName = Nothing,
      _ddrrsType = Nothing,
      _ddrrsStringValues = Nothing,
      _ddrrsResponseStatus = pResponseStatus_
    }

-- | The date the dimension was last modified.
ddrrsLastModifiedDate :: Lens' DescribeDimensionResponse (Maybe UTCTime)
ddrrsLastModifiedDate = lens _ddrrsLastModifiedDate (\s a -> s {_ddrrsLastModifiedDate = a}) . mapping _Time

-- | The date the dimension was created.
ddrrsCreationDate :: Lens' DescribeDimensionResponse (Maybe UTCTime)
ddrrsCreationDate = lens _ddrrsCreationDate (\s a -> s {_ddrrsCreationDate = a}) . mapping _Time

-- | The Amazon Resource Name (ARN) for the dimension.
ddrrsArn :: Lens' DescribeDimensionResponse (Maybe Text)
ddrrsArn = lens _ddrrsArn (\s a -> s {_ddrrsArn = a})

-- | The unique identifier for the dimension.
ddrrsName :: Lens' DescribeDimensionResponse (Maybe Text)
ddrrsName = lens _ddrrsName (\s a -> s {_ddrrsName = a})

-- | The type of the dimension.
ddrrsType :: Lens' DescribeDimensionResponse (Maybe DimensionType)
ddrrsType = lens _ddrrsType (\s a -> s {_ddrrsType = a})

-- | The value or list of values used to scope the dimension. For example, for topic filters, this is the pattern used to match the MQTT topic name.
ddrrsStringValues :: Lens' DescribeDimensionResponse (Maybe (NonEmpty Text))
ddrrsStringValues = lens _ddrrsStringValues (\s a -> s {_ddrrsStringValues = a}) . mapping _List1

-- | -- | The response status code.
ddrrsResponseStatus :: Lens' DescribeDimensionResponse Int
ddrrsResponseStatus = lens _ddrrsResponseStatus (\s a -> s {_ddrrsResponseStatus = a})

instance NFData DescribeDimensionResponse
