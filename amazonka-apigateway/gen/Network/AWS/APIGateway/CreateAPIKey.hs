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
-- Module      : Network.AWS.APIGateway.CreateAPIKey
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Create an 'ApiKey' resource.
--
--
-- <https://docs.aws.amazon.com/cli/latest/reference/apigateway/create-api-key.html AWS CLI>
module Network.AWS.APIGateway.CreateAPIKey
  ( -- * Creating a Request
    createAPIKey,
    CreateAPIKey,

    -- * Request Lenses
    cakCustomerId,
    cakStageKeys,
    cakEnabled,
    cakName,
    cakGenerateDistinctId,
    cakTags,
    cakDescription,
    cakValue,

    -- * Destructuring the Response
    apiKey,
    APIKey,

    -- * Response Lenses
    akCreatedDate,
    akCustomerId,
    akLastUpdatedDate,
    akStageKeys,
    akEnabled,
    akId,
    akName,
    akTags,
    akDescription,
    akValue,
  )
where

import Network.AWS.APIGateway.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | Request to create an 'ApiKey' resource.
--
--
--
-- /See:/ 'createAPIKey' smart constructor.
data CreateAPIKey = CreateAPIKey'
  { _cakCustomerId ::
      !(Maybe Text),
    _cakStageKeys :: !(Maybe [StageKey]),
    _cakEnabled :: !(Maybe Bool),
    _cakName :: !(Maybe Text),
    _cakGenerateDistinctId :: !(Maybe Bool),
    _cakTags :: !(Maybe (Map Text Text)),
    _cakDescription :: !(Maybe Text),
    _cakValue :: !(Maybe Text)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'CreateAPIKey' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cakCustomerId' - An AWS Marketplace customer identifier , when integrating with the AWS SaaS Marketplace.
--
-- * 'cakStageKeys' - DEPRECATED FOR USAGE PLANS - Specifies stages associated with the API key.
--
-- * 'cakEnabled' - Specifies whether the 'ApiKey' can be used by callers.
--
-- * 'cakName' - The name of the 'ApiKey' .
--
-- * 'cakGenerateDistinctId' - Specifies whether (@true@ ) or not (@false@ ) the key identifier is distinct from the created API key value. This parameter is deprecated and should not be used.
--
-- * 'cakTags' - The key-value map of strings. The valid character set is [a-zA-Z+-=._:/]. The tag key can be up to 128 characters and must not start with @aws:@ . The tag value can be up to 256 characters.
--
-- * 'cakDescription' - The description of the 'ApiKey' .
--
-- * 'cakValue' - Specifies a value of the API key.
createAPIKey ::
  CreateAPIKey
createAPIKey =
  CreateAPIKey'
    { _cakCustomerId = Nothing,
      _cakStageKeys = Nothing,
      _cakEnabled = Nothing,
      _cakName = Nothing,
      _cakGenerateDistinctId = Nothing,
      _cakTags = Nothing,
      _cakDescription = Nothing,
      _cakValue = Nothing
    }

-- | An AWS Marketplace customer identifier , when integrating with the AWS SaaS Marketplace.
cakCustomerId :: Lens' CreateAPIKey (Maybe Text)
cakCustomerId = lens _cakCustomerId (\s a -> s {_cakCustomerId = a})

-- | DEPRECATED FOR USAGE PLANS - Specifies stages associated with the API key.
cakStageKeys :: Lens' CreateAPIKey [StageKey]
cakStageKeys = lens _cakStageKeys (\s a -> s {_cakStageKeys = a}) . _Default . _Coerce

-- | Specifies whether the 'ApiKey' can be used by callers.
cakEnabled :: Lens' CreateAPIKey (Maybe Bool)
cakEnabled = lens _cakEnabled (\s a -> s {_cakEnabled = a})

-- | The name of the 'ApiKey' .
cakName :: Lens' CreateAPIKey (Maybe Text)
cakName = lens _cakName (\s a -> s {_cakName = a})

-- | Specifies whether (@true@ ) or not (@false@ ) the key identifier is distinct from the created API key value. This parameter is deprecated and should not be used.
cakGenerateDistinctId :: Lens' CreateAPIKey (Maybe Bool)
cakGenerateDistinctId = lens _cakGenerateDistinctId (\s a -> s {_cakGenerateDistinctId = a})

-- | The key-value map of strings. The valid character set is [a-zA-Z+-=._:/]. The tag key can be up to 128 characters and must not start with @aws:@ . The tag value can be up to 256 characters.
cakTags :: Lens' CreateAPIKey (HashMap Text Text)
cakTags = lens _cakTags (\s a -> s {_cakTags = a}) . _Default . _Map

-- | The description of the 'ApiKey' .
cakDescription :: Lens' CreateAPIKey (Maybe Text)
cakDescription = lens _cakDescription (\s a -> s {_cakDescription = a})

-- | Specifies a value of the API key.
cakValue :: Lens' CreateAPIKey (Maybe Text)
cakValue = lens _cakValue (\s a -> s {_cakValue = a})

instance AWSRequest CreateAPIKey where
  type Rs CreateAPIKey = APIKey
  request = postJSON apiGateway
  response = receiveJSON (\s h x -> eitherParseJSON x)

instance Hashable CreateAPIKey

instance NFData CreateAPIKey

instance ToHeaders CreateAPIKey where
  toHeaders =
    const
      ( mconcat
          ["Accept" =# ("application/json" :: ByteString)]
      )

instance ToJSON CreateAPIKey where
  toJSON CreateAPIKey' {..} =
    object
      ( catMaybes
          [ ("customerId" .=) <$> _cakCustomerId,
            ("stageKeys" .=) <$> _cakStageKeys,
            ("enabled" .=) <$> _cakEnabled,
            ("name" .=) <$> _cakName,
            ("generateDistinctId" .=) <$> _cakGenerateDistinctId,
            ("tags" .=) <$> _cakTags,
            ("description" .=) <$> _cakDescription,
            ("value" .=) <$> _cakValue
          ]
      )

instance ToPath CreateAPIKey where
  toPath = const "/apikeys"

instance ToQuery CreateAPIKey where
  toQuery = const mempty
