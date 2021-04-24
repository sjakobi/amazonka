{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Pinpoint.Types.CreateRecommenderConfiguration
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Pinpoint.Types.CreateRecommenderConfiguration where

import Network.AWS.Lens
import Network.AWS.Prelude

-- | Specifies Amazon Pinpoint configuration settings for retrieving and processing recommendation data from a recommender model.
--
--
--
-- /See:/ 'createRecommenderConfiguration' smart constructor.
data CreateRecommenderConfiguration = CreateRecommenderConfiguration'
  { _crcRecommendationsDisplayName ::
      !( Maybe
           Text
       ),
    _crcRecommendationTransformerURI ::
      !( Maybe
           Text
       ),
    _crcAttributes ::
      !( Maybe
           ( Map
               Text
               Text
           )
       ),
    _crcName ::
      !( Maybe
           Text
       ),
    _crcRecommendationsPerMessage ::
      !( Maybe
           Int
       ),
    _crcDescription ::
      !( Maybe
           Text
       ),
    _crcRecommendationProviderIdType ::
      !( Maybe
           Text
       ),
    _crcRecommendationProviderURI ::
      !Text,
    _crcRecommendationProviderRoleARN ::
      !Text
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'CreateRecommenderConfiguration' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'crcRecommendationsDisplayName' - A custom display name for the standard endpoint or user attribute (RecommendationItems) that temporarily stores recommended items for each endpoint or user, depending on the value for the RecommendationProviderIdType property. This value is required if the configuration doesn't invoke an AWS Lambda function (RecommendationTransformerUri) to perform additional processing of recommendation data. This name appears in the __Attribute finder__ of the template editor on the Amazon Pinpoint console. The name can contain up to 25 characters. The characters can be letters, numbers, spaces, underscores (_), or hyphens (-). These restrictions don't apply to attribute values.
--
-- * 'crcRecommendationTransformerURI' - The name or Amazon Resource Name (ARN) of the AWS Lambda function to invoke for additional processing of recommendation data that's retrieved from the recommender model.
--
-- * 'crcAttributes' - A map of key-value pairs that defines 1-10 custom endpoint or user attributes, depending on the value for the RecommendationProviderIdType property. Each of these attributes temporarily stores a recommended item that's retrieved from the recommender model and sent to an AWS Lambda function for additional processing. Each attribute can be used as a message variable in a message template. In the map, the key is the name of a custom attribute and the value is a custom display name for that attribute. The display name appears in the __Attribute finder__ of the template editor on the Amazon Pinpoint console. The following restrictions apply to these names:     * An attribute name must start with a letter or number and it can contain up to 50 characters. The characters can be letters, numbers, underscores (_), or hyphens (-). Attribute names are case sensitive and must be unique.     * An attribute display name must start with a letter or number and it can contain up to 25 characters. The characters can be letters, numbers, spaces, underscores (_), or hyphens (-). This object is required if the configuration invokes an AWS Lambda function (RecommendationTransformerUri) to process recommendation data. Otherwise, don't include this object in your request.
--
-- * 'crcName' - A custom name of the configuration for the recommender model. The name must start with a letter or number and it can contain up to 128 characters. The characters can be letters, numbers, spaces, underscores (_), or hyphens (-).
--
-- * 'crcRecommendationsPerMessage' - The number of recommended items to retrieve from the model for each endpoint or user, depending on the value for the RecommendationProviderIdType property. This number determines how many recommended items are available for use in message variables. The minimum value is 1. The maximum value is 5. The default value is 5. To use multiple recommended items and custom attributes with message variables, you have to use an AWS Lambda function (RecommendationTransformerUri) to perform additional processing of recommendation data.
--
-- * 'crcDescription' - A custom description of the configuration for the recommender model. The description can contain up to 128 characters. The characters can be letters, numbers, spaces, or the following symbols: _ ; () , ‐.
--
-- * 'crcRecommendationProviderIdType' - The type of Amazon Pinpoint ID to associate with unique user IDs in the recommender model. This value enables the model to use attribute and event data that’s specific to a particular endpoint or user in an Amazon Pinpoint application. Valid values are:     * PINPOINT_ENDPOINT_ID - Associate each user in the model with a particular endpoint in Amazon Pinpoint. The data is correlated based on endpoint IDs in Amazon Pinpoint. This is the default value.     * PINPOINT_USER_ID - Associate each user in the model with a particular user and endpoint in Amazon Pinpoint. The data is correlated based on user IDs in Amazon Pinpoint. If you specify this value, an endpoint definition in Amazon Pinpoint has to specify both a user ID (UserId) and an endpoint ID. Otherwise, messages won’t be sent to the user's endpoint.
--
-- * 'crcRecommendationProviderURI' - The Amazon Resource Name (ARN) of the recommender model to retrieve recommendation data from. This value must match the ARN of an Amazon Personalize campaign.
--
-- * 'crcRecommendationProviderRoleARN' - The Amazon Resource Name (ARN) of the AWS Identity and Access Management (IAM) role that authorizes Amazon Pinpoint to retrieve recommendation data from the recommender model.
createRecommenderConfiguration ::
  -- | 'crcRecommendationProviderURI'
  Text ->
  -- | 'crcRecommendationProviderRoleARN'
  Text ->
  CreateRecommenderConfiguration
createRecommenderConfiguration
  pRecommendationProviderURI_
  pRecommendationProviderRoleARN_ =
    CreateRecommenderConfiguration'
      { _crcRecommendationsDisplayName =
          Nothing,
        _crcRecommendationTransformerURI = Nothing,
        _crcAttributes = Nothing,
        _crcName = Nothing,
        _crcRecommendationsPerMessage = Nothing,
        _crcDescription = Nothing,
        _crcRecommendationProviderIdType = Nothing,
        _crcRecommendationProviderURI =
          pRecommendationProviderURI_,
        _crcRecommendationProviderRoleARN =
          pRecommendationProviderRoleARN_
      }

-- | A custom display name for the standard endpoint or user attribute (RecommendationItems) that temporarily stores recommended items for each endpoint or user, depending on the value for the RecommendationProviderIdType property. This value is required if the configuration doesn't invoke an AWS Lambda function (RecommendationTransformerUri) to perform additional processing of recommendation data. This name appears in the __Attribute finder__ of the template editor on the Amazon Pinpoint console. The name can contain up to 25 characters. The characters can be letters, numbers, spaces, underscores (_), or hyphens (-). These restrictions don't apply to attribute values.
crcRecommendationsDisplayName :: Lens' CreateRecommenderConfiguration (Maybe Text)
crcRecommendationsDisplayName = lens _crcRecommendationsDisplayName (\s a -> s {_crcRecommendationsDisplayName = a})

-- | The name or Amazon Resource Name (ARN) of the AWS Lambda function to invoke for additional processing of recommendation data that's retrieved from the recommender model.
crcRecommendationTransformerURI :: Lens' CreateRecommenderConfiguration (Maybe Text)
crcRecommendationTransformerURI = lens _crcRecommendationTransformerURI (\s a -> s {_crcRecommendationTransformerURI = a})

-- | A map of key-value pairs that defines 1-10 custom endpoint or user attributes, depending on the value for the RecommendationProviderIdType property. Each of these attributes temporarily stores a recommended item that's retrieved from the recommender model and sent to an AWS Lambda function for additional processing. Each attribute can be used as a message variable in a message template. In the map, the key is the name of a custom attribute and the value is a custom display name for that attribute. The display name appears in the __Attribute finder__ of the template editor on the Amazon Pinpoint console. The following restrictions apply to these names:     * An attribute name must start with a letter or number and it can contain up to 50 characters. The characters can be letters, numbers, underscores (_), or hyphens (-). Attribute names are case sensitive and must be unique.     * An attribute display name must start with a letter or number and it can contain up to 25 characters. The characters can be letters, numbers, spaces, underscores (_), or hyphens (-). This object is required if the configuration invokes an AWS Lambda function (RecommendationTransformerUri) to process recommendation data. Otherwise, don't include this object in your request.
crcAttributes :: Lens' CreateRecommenderConfiguration (HashMap Text Text)
crcAttributes = lens _crcAttributes (\s a -> s {_crcAttributes = a}) . _Default . _Map

-- | A custom name of the configuration for the recommender model. The name must start with a letter or number and it can contain up to 128 characters. The characters can be letters, numbers, spaces, underscores (_), or hyphens (-).
crcName :: Lens' CreateRecommenderConfiguration (Maybe Text)
crcName = lens _crcName (\s a -> s {_crcName = a})

-- | The number of recommended items to retrieve from the model for each endpoint or user, depending on the value for the RecommendationProviderIdType property. This number determines how many recommended items are available for use in message variables. The minimum value is 1. The maximum value is 5. The default value is 5. To use multiple recommended items and custom attributes with message variables, you have to use an AWS Lambda function (RecommendationTransformerUri) to perform additional processing of recommendation data.
crcRecommendationsPerMessage :: Lens' CreateRecommenderConfiguration (Maybe Int)
crcRecommendationsPerMessage = lens _crcRecommendationsPerMessage (\s a -> s {_crcRecommendationsPerMessage = a})

-- | A custom description of the configuration for the recommender model. The description can contain up to 128 characters. The characters can be letters, numbers, spaces, or the following symbols: _ ; () , ‐.
crcDescription :: Lens' CreateRecommenderConfiguration (Maybe Text)
crcDescription = lens _crcDescription (\s a -> s {_crcDescription = a})

-- | The type of Amazon Pinpoint ID to associate with unique user IDs in the recommender model. This value enables the model to use attribute and event data that’s specific to a particular endpoint or user in an Amazon Pinpoint application. Valid values are:     * PINPOINT_ENDPOINT_ID - Associate each user in the model with a particular endpoint in Amazon Pinpoint. The data is correlated based on endpoint IDs in Amazon Pinpoint. This is the default value.     * PINPOINT_USER_ID - Associate each user in the model with a particular user and endpoint in Amazon Pinpoint. The data is correlated based on user IDs in Amazon Pinpoint. If you specify this value, an endpoint definition in Amazon Pinpoint has to specify both a user ID (UserId) and an endpoint ID. Otherwise, messages won’t be sent to the user's endpoint.
crcRecommendationProviderIdType :: Lens' CreateRecommenderConfiguration (Maybe Text)
crcRecommendationProviderIdType = lens _crcRecommendationProviderIdType (\s a -> s {_crcRecommendationProviderIdType = a})

-- | The Amazon Resource Name (ARN) of the recommender model to retrieve recommendation data from. This value must match the ARN of an Amazon Personalize campaign.
crcRecommendationProviderURI :: Lens' CreateRecommenderConfiguration Text
crcRecommendationProviderURI = lens _crcRecommendationProviderURI (\s a -> s {_crcRecommendationProviderURI = a})

-- | The Amazon Resource Name (ARN) of the AWS Identity and Access Management (IAM) role that authorizes Amazon Pinpoint to retrieve recommendation data from the recommender model.
crcRecommendationProviderRoleARN :: Lens' CreateRecommenderConfiguration Text
crcRecommendationProviderRoleARN = lens _crcRecommendationProviderRoleARN (\s a -> s {_crcRecommendationProviderRoleARN = a})

instance Hashable CreateRecommenderConfiguration

instance NFData CreateRecommenderConfiguration

instance ToJSON CreateRecommenderConfiguration where
  toJSON CreateRecommenderConfiguration' {..} =
    object
      ( catMaybes
          [ ("RecommendationsDisplayName" .=)
              <$> _crcRecommendationsDisplayName,
            ("RecommendationTransformerUri" .=)
              <$> _crcRecommendationTransformerURI,
            ("Attributes" .=) <$> _crcAttributes,
            ("Name" .=) <$> _crcName,
            ("RecommendationsPerMessage" .=)
              <$> _crcRecommendationsPerMessage,
            ("Description" .=) <$> _crcDescription,
            ("RecommendationProviderIdType" .=)
              <$> _crcRecommendationProviderIdType,
            Just
              ( "RecommendationProviderUri"
                  .= _crcRecommendationProviderURI
              ),
            Just
              ( "RecommendationProviderRoleArn"
                  .= _crcRecommendationProviderRoleARN
              )
          ]
      )
