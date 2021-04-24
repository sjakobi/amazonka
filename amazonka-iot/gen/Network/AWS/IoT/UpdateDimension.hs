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
-- Module      : Network.AWS.IoT.UpdateDimension
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates the definition for a dimension. You cannot change the type of a dimension after it is created (you can delete it and recreate it).
module Network.AWS.IoT.UpdateDimension
  ( -- * Creating a Request
    updateDimension,
    UpdateDimension,

    -- * Request Lenses
    udName,
    udStringValues,

    -- * Destructuring the Response
    updateDimensionResponse,
    UpdateDimensionResponse,

    -- * Response Lenses
    udrrsLastModifiedDate,
    udrrsCreationDate,
    udrrsArn,
    udrrsName,
    udrrsType,
    udrrsStringValues,
    udrrsResponseStatus,
  )
where

import Network.AWS.IoT.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'updateDimension' smart constructor.
data UpdateDimension = UpdateDimension'
  { _udName ::
      !Text,
    _udStringValues :: !(List1 Text)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'UpdateDimension' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'udName' - A unique identifier for the dimension. Choose something that describes the type and value to make it easy to remember what it does.
--
-- * 'udStringValues' - Specifies the value or list of values for the dimension. For @TOPIC_FILTER@ dimensions, this is a pattern used to match the MQTT topic (for example, "admin/#").
updateDimension ::
  -- | 'udName'
  Text ->
  -- | 'udStringValues'
  NonEmpty Text ->
  UpdateDimension
updateDimension pName_ pStringValues_ =
  UpdateDimension'
    { _udName = pName_,
      _udStringValues = _List1 # pStringValues_
    }

-- | A unique identifier for the dimension. Choose something that describes the type and value to make it easy to remember what it does.
udName :: Lens' UpdateDimension Text
udName = lens _udName (\s a -> s {_udName = a})

-- | Specifies the value or list of values for the dimension. For @TOPIC_FILTER@ dimensions, this is a pattern used to match the MQTT topic (for example, "admin/#").
udStringValues :: Lens' UpdateDimension (NonEmpty Text)
udStringValues = lens _udStringValues (\s a -> s {_udStringValues = a}) . _List1

instance AWSRequest UpdateDimension where
  type Rs UpdateDimension = UpdateDimensionResponse
  request = patchJSON ioT
  response =
    receiveJSON
      ( \s h x ->
          UpdateDimensionResponse'
            <$> (x .?> "lastModifiedDate")
            <*> (x .?> "creationDate")
            <*> (x .?> "arn")
            <*> (x .?> "name")
            <*> (x .?> "type")
            <*> (x .?> "stringValues")
            <*> (pure (fromEnum s))
      )

instance Hashable UpdateDimension

instance NFData UpdateDimension

instance ToHeaders UpdateDimension where
  toHeaders = const mempty

instance ToJSON UpdateDimension where
  toJSON UpdateDimension' {..} =
    object
      ( catMaybes
          [Just ("stringValues" .= _udStringValues)]
      )

instance ToPath UpdateDimension where
  toPath UpdateDimension' {..} =
    mconcat ["/dimensions/", toBS _udName]

instance ToQuery UpdateDimension where
  toQuery = const mempty

-- | /See:/ 'updateDimensionResponse' smart constructor.
data UpdateDimensionResponse = UpdateDimensionResponse'
  { _udrrsLastModifiedDate ::
      !(Maybe POSIX),
    _udrrsCreationDate ::
      !(Maybe POSIX),
    _udrrsArn ::
      !(Maybe Text),
    _udrrsName ::
      !(Maybe Text),
    _udrrsType ::
      !(Maybe DimensionType),
    _udrrsStringValues ::
      !(Maybe (List1 Text)),
    _udrrsResponseStatus ::
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

-- | Creates a value of 'UpdateDimensionResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'udrrsLastModifiedDate' - The date and time, in milliseconds since epoch, when the dimension was most recently updated.
--
-- * 'udrrsCreationDate' - The date and time, in milliseconds since epoch, when the dimension was initially created.
--
-- * 'udrrsArn' - The Amazon Resource Name (ARN)of the created dimension.
--
-- * 'udrrsName' - A unique identifier for the dimension.
--
-- * 'udrrsType' - The type of the dimension.
--
-- * 'udrrsStringValues' - The value or list of values used to scope the dimension. For example, for topic filters, this is the pattern used to match the MQTT topic name.
--
-- * 'udrrsResponseStatus' - -- | The response status code.
updateDimensionResponse ::
  -- | 'udrrsResponseStatus'
  Int ->
  UpdateDimensionResponse
updateDimensionResponse pResponseStatus_ =
  UpdateDimensionResponse'
    { _udrrsLastModifiedDate =
        Nothing,
      _udrrsCreationDate = Nothing,
      _udrrsArn = Nothing,
      _udrrsName = Nothing,
      _udrrsType = Nothing,
      _udrrsStringValues = Nothing,
      _udrrsResponseStatus = pResponseStatus_
    }

-- | The date and time, in milliseconds since epoch, when the dimension was most recently updated.
udrrsLastModifiedDate :: Lens' UpdateDimensionResponse (Maybe UTCTime)
udrrsLastModifiedDate = lens _udrrsLastModifiedDate (\s a -> s {_udrrsLastModifiedDate = a}) . mapping _Time

-- | The date and time, in milliseconds since epoch, when the dimension was initially created.
udrrsCreationDate :: Lens' UpdateDimensionResponse (Maybe UTCTime)
udrrsCreationDate = lens _udrrsCreationDate (\s a -> s {_udrrsCreationDate = a}) . mapping _Time

-- | The Amazon Resource Name (ARN)of the created dimension.
udrrsArn :: Lens' UpdateDimensionResponse (Maybe Text)
udrrsArn = lens _udrrsArn (\s a -> s {_udrrsArn = a})

-- | A unique identifier for the dimension.
udrrsName :: Lens' UpdateDimensionResponse (Maybe Text)
udrrsName = lens _udrrsName (\s a -> s {_udrrsName = a})

-- | The type of the dimension.
udrrsType :: Lens' UpdateDimensionResponse (Maybe DimensionType)
udrrsType = lens _udrrsType (\s a -> s {_udrrsType = a})

-- | The value or list of values used to scope the dimension. For example, for topic filters, this is the pattern used to match the MQTT topic name.
udrrsStringValues :: Lens' UpdateDimensionResponse (Maybe (NonEmpty Text))
udrrsStringValues = lens _udrrsStringValues (\s a -> s {_udrrsStringValues = a}) . mapping _List1

-- | -- | The response status code.
udrrsResponseStatus :: Lens' UpdateDimensionResponse Int
udrrsResponseStatus = lens _udrrsResponseStatus (\s a -> s {_udrrsResponseStatus = a})

instance NFData UpdateDimensionResponse
