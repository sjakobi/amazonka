{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Pinpoint.Types.ApplicationResponse
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Pinpoint.Types.ApplicationResponse where

import Network.AWS.Lens
import Network.AWS.Prelude

-- | Provides information about an application.
--
--
--
-- /See:/ 'applicationResponse' smart constructor.
data ApplicationResponse = ApplicationResponse'
  { _arTags ::
      !(Maybe (Map Text Text)),
    _arId :: !Text,
    _arARN :: !Text,
    _arName :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ApplicationResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'arTags' - A string-to-string map of key-value pairs that identifies the tags that are associated with the application. Each tag consists of a required tag key and an associated tag value.
--
-- * 'arId' - The unique identifier for the application. This identifier is displayed as the __Project ID__ on the Amazon Pinpoint console.
--
-- * 'arARN' - The Amazon Resource Name (ARN) of the application.
--
-- * 'arName' - The display name of the application. This name is displayed as the __Project name__ on the Amazon Pinpoint console.
applicationResponse ::
  -- | 'arId'
  Text ->
  -- | 'arARN'
  Text ->
  -- | 'arName'
  Text ->
  ApplicationResponse
applicationResponse pId_ pARN_ pName_ =
  ApplicationResponse'
    { _arTags = Nothing,
      _arId = pId_,
      _arARN = pARN_,
      _arName = pName_
    }

-- | A string-to-string map of key-value pairs that identifies the tags that are associated with the application. Each tag consists of a required tag key and an associated tag value.
arTags :: Lens' ApplicationResponse (HashMap Text Text)
arTags = lens _arTags (\s a -> s {_arTags = a}) . _Default . _Map

-- | The unique identifier for the application. This identifier is displayed as the __Project ID__ on the Amazon Pinpoint console.
arId :: Lens' ApplicationResponse Text
arId = lens _arId (\s a -> s {_arId = a})

-- | The Amazon Resource Name (ARN) of the application.
arARN :: Lens' ApplicationResponse Text
arARN = lens _arARN (\s a -> s {_arARN = a})

-- | The display name of the application. This name is displayed as the __Project name__ on the Amazon Pinpoint console.
arName :: Lens' ApplicationResponse Text
arName = lens _arName (\s a -> s {_arName = a})

instance FromJSON ApplicationResponse where
  parseJSON =
    withObject
      "ApplicationResponse"
      ( \x ->
          ApplicationResponse'
            <$> (x .:? "tags" .!= mempty)
            <*> (x .: "Id")
            <*> (x .: "Arn")
            <*> (x .: "Name")
      )

instance Hashable ApplicationResponse

instance NFData ApplicationResponse
