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
-- Module      : Network.AWS.IoT.CreateDimension
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Create a dimension that you can use to limit the scope of a metric used in a security profile for AWS IoT Device Defender. For example, using a @TOPIC_FILTER@ dimension, you can narrow down the scope of the metric only to MQTT topics whose name match the pattern specified in the dimension.
module Network.AWS.IoT.CreateDimension
  ( -- * Creating a Request
    createDimension,
    CreateDimension,

    -- * Request Lenses
    cdTags,
    cdName,
    cdType,
    cdStringValues,
    cdClientRequestToken,

    -- * Destructuring the Response
    createDimensionResponse,
    CreateDimensionResponse,

    -- * Response Lenses
    cdrrsArn,
    cdrrsName,
    cdrrsResponseStatus,
  )
where

import Network.AWS.IoT.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'createDimension' smart constructor.
data CreateDimension = CreateDimension'
  { _cdTags ::
      !(Maybe [Tag]),
    _cdName :: !Text,
    _cdType :: !DimensionType,
    _cdStringValues :: !(List1 Text),
    _cdClientRequestToken :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'CreateDimension' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cdTags' - Metadata that can be used to manage the dimension.
--
-- * 'cdName' - A unique identifier for the dimension. Choose something that describes the type and value to make it easy to remember what it does.
--
-- * 'cdType' - Specifies the type of dimension. Supported types: @TOPIC_FILTER.@
--
-- * 'cdStringValues' - Specifies the value or list of values for the dimension. For @TOPIC_FILTER@ dimensions, this is a pattern used to match the MQTT topic (for example, "admin/#").
--
-- * 'cdClientRequestToken' - Each dimension must have a unique client request token. If you try to create a new dimension with the same token as a dimension that already exists, an exception occurs. If you omit this value, AWS SDKs will automatically generate a unique client request.
createDimension ::
  -- | 'cdName'
  Text ->
  -- | 'cdType'
  DimensionType ->
  -- | 'cdStringValues'
  NonEmpty Text ->
  -- | 'cdClientRequestToken'
  Text ->
  CreateDimension
createDimension
  pName_
  pType_
  pStringValues_
  pClientRequestToken_ =
    CreateDimension'
      { _cdTags = Nothing,
        _cdName = pName_,
        _cdType = pType_,
        _cdStringValues = _List1 # pStringValues_,
        _cdClientRequestToken = pClientRequestToken_
      }

-- | Metadata that can be used to manage the dimension.
cdTags :: Lens' CreateDimension [Tag]
cdTags = lens _cdTags (\s a -> s {_cdTags = a}) . _Default . _Coerce

-- | A unique identifier for the dimension. Choose something that describes the type and value to make it easy to remember what it does.
cdName :: Lens' CreateDimension Text
cdName = lens _cdName (\s a -> s {_cdName = a})

-- | Specifies the type of dimension. Supported types: @TOPIC_FILTER.@
cdType :: Lens' CreateDimension DimensionType
cdType = lens _cdType (\s a -> s {_cdType = a})

-- | Specifies the value or list of values for the dimension. For @TOPIC_FILTER@ dimensions, this is a pattern used to match the MQTT topic (for example, "admin/#").
cdStringValues :: Lens' CreateDimension (NonEmpty Text)
cdStringValues = lens _cdStringValues (\s a -> s {_cdStringValues = a}) . _List1

-- | Each dimension must have a unique client request token. If you try to create a new dimension with the same token as a dimension that already exists, an exception occurs. If you omit this value, AWS SDKs will automatically generate a unique client request.
cdClientRequestToken :: Lens' CreateDimension Text
cdClientRequestToken = lens _cdClientRequestToken (\s a -> s {_cdClientRequestToken = a})

instance AWSRequest CreateDimension where
  type Rs CreateDimension = CreateDimensionResponse
  request = postJSON ioT
  response =
    receiveJSON
      ( \s h x ->
          CreateDimensionResponse'
            <$> (x .?> "arn")
            <*> (x .?> "name")
            <*> (pure (fromEnum s))
      )

instance Hashable CreateDimension

instance NFData CreateDimension

instance ToHeaders CreateDimension where
  toHeaders = const mempty

instance ToJSON CreateDimension where
  toJSON CreateDimension' {..} =
    object
      ( catMaybes
          [ ("tags" .=) <$> _cdTags,
            Just ("type" .= _cdType),
            Just ("stringValues" .= _cdStringValues),
            Just
              ("clientRequestToken" .= _cdClientRequestToken)
          ]
      )

instance ToPath CreateDimension where
  toPath CreateDimension' {..} =
    mconcat ["/dimensions/", toBS _cdName]

instance ToQuery CreateDimension where
  toQuery = const mempty

-- | /See:/ 'createDimensionResponse' smart constructor.
data CreateDimensionResponse = CreateDimensionResponse'
  { _cdrrsArn ::
      !(Maybe Text),
    _cdrrsName ::
      !(Maybe Text),
    _cdrrsResponseStatus ::
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

-- | Creates a value of 'CreateDimensionResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cdrrsArn' - The Amazon Resource Name (ARN) of the created dimension.
--
-- * 'cdrrsName' - A unique identifier for the dimension.
--
-- * 'cdrrsResponseStatus' - -- | The response status code.
createDimensionResponse ::
  -- | 'cdrrsResponseStatus'
  Int ->
  CreateDimensionResponse
createDimensionResponse pResponseStatus_ =
  CreateDimensionResponse'
    { _cdrrsArn = Nothing,
      _cdrrsName = Nothing,
      _cdrrsResponseStatus = pResponseStatus_
    }

-- | The Amazon Resource Name (ARN) of the created dimension.
cdrrsArn :: Lens' CreateDimensionResponse (Maybe Text)
cdrrsArn = lens _cdrrsArn (\s a -> s {_cdrrsArn = a})

-- | A unique identifier for the dimension.
cdrrsName :: Lens' CreateDimensionResponse (Maybe Text)
cdrrsName = lens _cdrrsName (\s a -> s {_cdrrsName = a})

-- | -- | The response status code.
cdrrsResponseStatus :: Lens' CreateDimensionResponse Int
cdrrsResponseStatus = lens _cdrrsResponseStatus (\s a -> s {_cdrrsResponseStatus = a})

instance NFData CreateDimensionResponse
