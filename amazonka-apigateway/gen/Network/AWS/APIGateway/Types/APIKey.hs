{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.APIGateway.Types.APIKey
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.APIGateway.Types.APIKey where

import Network.AWS.Lens
import Network.AWS.Prelude

-- | A resource that can be distributed to callers for executing 'Method' resources that require an API key. API keys can be mapped to any 'Stage' on any 'RestApi' , which indicates that the callers with the API key can make requests to that stage.
--
--
-- <https://docs.aws.amazon.com/apigateway/latest/developerguide/how-to-api-keys.html Use API Keys>
--
-- /See:/ 'apiKey' smart constructor.
data APIKey = APIKey'
  { _akCreatedDate ::
      !(Maybe POSIX),
    _akCustomerId :: !(Maybe Text),
    _akLastUpdatedDate :: !(Maybe POSIX),
    _akStageKeys :: !(Maybe [Text]),
    _akEnabled :: !(Maybe Bool),
    _akId :: !(Maybe Text),
    _akName :: !(Maybe Text),
    _akTags :: !(Maybe (Map Text Text)),
    _akDescription :: !(Maybe Text),
    _akValue :: !(Maybe Text)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'APIKey' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'akCreatedDate' - The timestamp when the API Key was created.
--
-- * 'akCustomerId' - An AWS Marketplace customer identifier , when integrating with the AWS SaaS Marketplace.
--
-- * 'akLastUpdatedDate' - The timestamp when the API Key was last updated.
--
-- * 'akStageKeys' - A list of 'Stage' resources that are associated with the 'ApiKey' resource.
--
-- * 'akEnabled' - Specifies whether the API Key can be used by callers.
--
-- * 'akId' - The identifier of the API Key.
--
-- * 'akName' - The name of the API Key.
--
-- * 'akTags' - The collection of tags. Each tag element is associated with a given resource.
--
-- * 'akDescription' - The description of the API Key.
--
-- * 'akValue' - The value of the API Key.
apiKey ::
  APIKey
apiKey =
  APIKey'
    { _akCreatedDate = Nothing,
      _akCustomerId = Nothing,
      _akLastUpdatedDate = Nothing,
      _akStageKeys = Nothing,
      _akEnabled = Nothing,
      _akId = Nothing,
      _akName = Nothing,
      _akTags = Nothing,
      _akDescription = Nothing,
      _akValue = Nothing
    }

-- | The timestamp when the API Key was created.
akCreatedDate :: Lens' APIKey (Maybe UTCTime)
akCreatedDate = lens _akCreatedDate (\s a -> s {_akCreatedDate = a}) . mapping _Time

-- | An AWS Marketplace customer identifier , when integrating with the AWS SaaS Marketplace.
akCustomerId :: Lens' APIKey (Maybe Text)
akCustomerId = lens _akCustomerId (\s a -> s {_akCustomerId = a})

-- | The timestamp when the API Key was last updated.
akLastUpdatedDate :: Lens' APIKey (Maybe UTCTime)
akLastUpdatedDate = lens _akLastUpdatedDate (\s a -> s {_akLastUpdatedDate = a}) . mapping _Time

-- | A list of 'Stage' resources that are associated with the 'ApiKey' resource.
akStageKeys :: Lens' APIKey [Text]
akStageKeys = lens _akStageKeys (\s a -> s {_akStageKeys = a}) . _Default . _Coerce

-- | Specifies whether the API Key can be used by callers.
akEnabled :: Lens' APIKey (Maybe Bool)
akEnabled = lens _akEnabled (\s a -> s {_akEnabled = a})

-- | The identifier of the API Key.
akId :: Lens' APIKey (Maybe Text)
akId = lens _akId (\s a -> s {_akId = a})

-- | The name of the API Key.
akName :: Lens' APIKey (Maybe Text)
akName = lens _akName (\s a -> s {_akName = a})

-- | The collection of tags. Each tag element is associated with a given resource.
akTags :: Lens' APIKey (HashMap Text Text)
akTags = lens _akTags (\s a -> s {_akTags = a}) . _Default . _Map

-- | The description of the API Key.
akDescription :: Lens' APIKey (Maybe Text)
akDescription = lens _akDescription (\s a -> s {_akDescription = a})

-- | The value of the API Key.
akValue :: Lens' APIKey (Maybe Text)
akValue = lens _akValue (\s a -> s {_akValue = a})

instance FromJSON APIKey where
  parseJSON =
    withObject
      "APIKey"
      ( \x ->
          APIKey'
            <$> (x .:? "createdDate")
            <*> (x .:? "customerId")
            <*> (x .:? "lastUpdatedDate")
            <*> (x .:? "stageKeys" .!= mempty)
            <*> (x .:? "enabled")
            <*> (x .:? "id")
            <*> (x .:? "name")
            <*> (x .:? "tags" .!= mempty)
            <*> (x .:? "description")
            <*> (x .:? "value")
      )

instance Hashable APIKey

instance NFData APIKey
