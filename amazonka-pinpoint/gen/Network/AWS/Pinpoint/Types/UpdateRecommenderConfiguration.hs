{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Pinpoint.Types.UpdateRecommenderConfiguration
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Pinpoint.Types.UpdateRecommenderConfiguration where

import Network.AWS.Lens
import Network.AWS.Prelude

-- | Specifies Amazon Pinpoint configuration settings for retrieving and processing recommendation data from a recommender model.
--
--
--
-- /See:/ 'updateRecommenderConfiguration' smart constructor.
data UpdateRecommenderConfiguration = UpdateRecommenderConfiguration'
  { _urcRecommendationsDisplayName ::
      !( Maybe
           Text
       ),
    _urcRecommendationTransformerURI ::
      !( Maybe
           Text
       ),
    _urcAttributes ::
      !( Maybe
           ( Map
               Text
               Text
           )
       ),
    _urcName ::
      !( Maybe
           Text
       ),
    _urcRecommendationsPerMessage ::
      !( Maybe
           Int
       ),
    _urcDescription ::
      !( Maybe
           Text
       ),
    _urcRecommendationProviderIdType ::
      !( Maybe
           Text
       ),
    _urcRecommendationProviderURI ::
      !Text,
    _urcRecommendationProviderRoleARN ::
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

-- | Creates a value of 'UpdateRecommenderConfiguration' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'urcRecommendationsDisplayName' - A custom display name for the standard endpoint or user attribute (RecommendationItems) that temporarily stores recommended items for each endpoint or user, depending on the value for the RecommendationProviderIdType property. This value is required if the configuration doesn't invoke an AWS Lambda function (RecommendationTransformerUri) to perform additional processing of recommendation data. This name appears in the __Attribute finder__ of the template editor on the Amazon Pinpoint console. The name can contain up to 25 characters. The characters can be letters, numbers, spaces, underscores (_), or hyphens (-). These restrictions don't apply to attribute values.
--
-- * 'urcRecommendationTransformerURI' - The name or Amazon Resource Name (ARN) of the AWS Lambda function to invoke for additional processing of recommendation data that's retrieved from the recommender model.
--
-- * 'urcAttributes' - A map of key-value pairs that defines 1-10 custom endpoint or user attributes, depending on the value for the RecommendationProviderIdType property. Each of these attributes temporarily stores a recommended item that's retrieved from the recommender model and sent to an AWS Lambda function for additional processing. Each attribute can be used as a message variable in a message template. In the map, the key is the name of a custom attribute and the value is a custom display name for that attribute. The display name appears in the __Attribute finder__ of the template editor on the Amazon Pinpoint console. The following restrictions apply to these names:     * An attribute name must start with a letter or number and it can contain up to 50 characters. The characters can be letters, numbers, underscores (_), or hyphens (-). Attribute names are case sensitive and must be unique.     * An attribute display name must start with a letter or number and it can contain up to 25 characters. The characters can be letters, numbers, spaces, underscores (_), or hyphens (-). This object is required if the configuration invokes an AWS Lambda function (RecommendationTransformerUri) to process recommendation data. Otherwise, don't include this object in your request.
--
-- * 'urcName' - A custom name of the configuration for the recommender model. The name must start with a letter or number and it can contain up to 128 characters. The characters can be letters, numbers, spaces, underscores (_), or hyphens (-).
--
-- * 'urcRecommendationsPerMessage' - The number of recommended items to retrieve from the model for each endpoint or user, depending on the value for the RecommendationProviderIdType property. This number determines how many recommended items are available for use in message variables. The minimum value is 1. The maximum value is 5. The default value is 5. To use multiple recommended items and custom attributes with message variables, you have to use an AWS Lambda function (RecommendationTransformerUri) to perform additional processing of recommendation data.
--
-- * 'urcDescription' - A custom description of the configuration for the recommender model. The description can contain up to 128 characters. The characters can be letters, numbers, spaces, or the following symbols: _ ; () , ‐.
--
-- * 'urcRecommendationProviderIdType' - The type of Amazon Pinpoint ID to associate with unique user IDs in the recommender model. This value enables the model to use attribute and event data that’s specific to a particular endpoint or user in an Amazon Pinpoint application. Valid values are:     * PINPOINT_ENDPOINT_ID - Associate each user in the model with a particular endpoint in Amazon Pinpoint. The data is correlated based on endpoint IDs in Amazon Pinpoint. This is the default value.     * PINPOINT_USER_ID - Associate each user in the model with a particular user and endpoint in Amazon Pinpoint. The data is correlated based on user IDs in Amazon Pinpoint. If you specify this value, an endpoint definition in Amazon Pinpoint has to specify both a user ID (UserId) and an endpoint ID. Otherwise, messages won’t be sent to the user's endpoint.
--
-- * 'urcRecommendationProviderURI' - The Amazon Resource Name (ARN) of the recommender model to retrieve recommendation data from. This value must match the ARN of an Amazon Personalize campaign.
--
-- * 'urcRecommendationProviderRoleARN' - The Amazon Resource Name (ARN) of the AWS Identity and Access Management (IAM) role that authorizes Amazon Pinpoint to retrieve recommendation data from the recommender model.
updateRecommenderConfiguration ::
  -- | 'urcRecommendationProviderURI'
  Text ->
  -- | 'urcRecommendationProviderRoleARN'
  Text ->
  UpdateRecommenderConfiguration
updateRecommenderConfiguration
  pRecommendationProviderURI_
  pRecommendationProviderRoleARN_ =
    UpdateRecommenderConfiguration'
      { _urcRecommendationsDisplayName =
          Nothing,
        _urcRecommendationTransformerURI = Nothing,
        _urcAttributes = Nothing,
        _urcName = Nothing,
        _urcRecommendationsPerMessage = Nothing,
        _urcDescription = Nothing,
        _urcRecommendationProviderIdType = Nothing,
        _urcRecommendationProviderURI =
          pRecommendationProviderURI_,
        _urcRecommendationProviderRoleARN =
          pRecommendationProviderRoleARN_
      }

-- | A custom display name for the standard endpoint or user attribute (RecommendationItems) that temporarily stores recommended items for each endpoint or user, depending on the value for the RecommendationProviderIdType property. This value is required if the configuration doesn't invoke an AWS Lambda function (RecommendationTransformerUri) to perform additional processing of recommendation data. This name appears in the __Attribute finder__ of the template editor on the Amazon Pinpoint console. The name can contain up to 25 characters. The characters can be letters, numbers, spaces, underscores (_), or hyphens (-). These restrictions don't apply to attribute values.
urcRecommendationsDisplayName :: Lens' UpdateRecommenderConfiguration (Maybe Text)
urcRecommendationsDisplayName = lens _urcRecommendationsDisplayName (\s a -> s {_urcRecommendationsDisplayName = a})

-- | The name or Amazon Resource Name (ARN) of the AWS Lambda function to invoke for additional processing of recommendation data that's retrieved from the recommender model.
urcRecommendationTransformerURI :: Lens' UpdateRecommenderConfiguration (Maybe Text)
urcRecommendationTransformerURI = lens _urcRecommendationTransformerURI (\s a -> s {_urcRecommendationTransformerURI = a})

-- | A map of key-value pairs that defines 1-10 custom endpoint or user attributes, depending on the value for the RecommendationProviderIdType property. Each of these attributes temporarily stores a recommended item that's retrieved from the recommender model and sent to an AWS Lambda function for additional processing. Each attribute can be used as a message variable in a message template. In the map, the key is the name of a custom attribute and the value is a custom display name for that attribute. The display name appears in the __Attribute finder__ of the template editor on the Amazon Pinpoint console. The following restrictions apply to these names:     * An attribute name must start with a letter or number and it can contain up to 50 characters. The characters can be letters, numbers, underscores (_), or hyphens (-). Attribute names are case sensitive and must be unique.     * An attribute display name must start with a letter or number and it can contain up to 25 characters. The characters can be letters, numbers, spaces, underscores (_), or hyphens (-). This object is required if the configuration invokes an AWS Lambda function (RecommendationTransformerUri) to process recommendation data. Otherwise, don't include this object in your request.
urcAttributes :: Lens' UpdateRecommenderConfiguration (HashMap Text Text)
urcAttributes = lens _urcAttributes (\s a -> s {_urcAttributes = a}) . _Default . _Map

-- | A custom name of the configuration for the recommender model. The name must start with a letter or number and it can contain up to 128 characters. The characters can be letters, numbers, spaces, underscores (_), or hyphens (-).
urcName :: Lens' UpdateRecommenderConfiguration (Maybe Text)
urcName = lens _urcName (\s a -> s {_urcName = a})

-- | The number of recommended items to retrieve from the model for each endpoint or user, depending on the value for the RecommendationProviderIdType property. This number determines how many recommended items are available for use in message variables. The minimum value is 1. The maximum value is 5. The default value is 5. To use multiple recommended items and custom attributes with message variables, you have to use an AWS Lambda function (RecommendationTransformerUri) to perform additional processing of recommendation data.
urcRecommendationsPerMessage :: Lens' UpdateRecommenderConfiguration (Maybe Int)
urcRecommendationsPerMessage = lens _urcRecommendationsPerMessage (\s a -> s {_urcRecommendationsPerMessage = a})

-- | A custom description of the configuration for the recommender model. The description can contain up to 128 characters. The characters can be letters, numbers, spaces, or the following symbols: _ ; () , ‐.
urcDescription :: Lens' UpdateRecommenderConfiguration (Maybe Text)
urcDescription = lens _urcDescription (\s a -> s {_urcDescription = a})

-- | The type of Amazon Pinpoint ID to associate with unique user IDs in the recommender model. This value enables the model to use attribute and event data that’s specific to a particular endpoint or user in an Amazon Pinpoint application. Valid values are:     * PINPOINT_ENDPOINT_ID - Associate each user in the model with a particular endpoint in Amazon Pinpoint. The data is correlated based on endpoint IDs in Amazon Pinpoint. This is the default value.     * PINPOINT_USER_ID - Associate each user in the model with a particular user and endpoint in Amazon Pinpoint. The data is correlated based on user IDs in Amazon Pinpoint. If you specify this value, an endpoint definition in Amazon Pinpoint has to specify both a user ID (UserId) and an endpoint ID. Otherwise, messages won’t be sent to the user's endpoint.
urcRecommendationProviderIdType :: Lens' UpdateRecommenderConfiguration (Maybe Text)
urcRecommendationProviderIdType = lens _urcRecommendationProviderIdType (\s a -> s {_urcRecommendationProviderIdType = a})

-- | The Amazon Resource Name (ARN) of the recommender model to retrieve recommendation data from. This value must match the ARN of an Amazon Personalize campaign.
urcRecommendationProviderURI :: Lens' UpdateRecommenderConfiguration Text
urcRecommendationProviderURI = lens _urcRecommendationProviderURI (\s a -> s {_urcRecommendationProviderURI = a})

-- | The Amazon Resource Name (ARN) of the AWS Identity and Access Management (IAM) role that authorizes Amazon Pinpoint to retrieve recommendation data from the recommender model.
urcRecommendationProviderRoleARN :: Lens' UpdateRecommenderConfiguration Text
urcRecommendationProviderRoleARN = lens _urcRecommendationProviderRoleARN (\s a -> s {_urcRecommendationProviderRoleARN = a})

instance Hashable UpdateRecommenderConfiguration

instance NFData UpdateRecommenderConfiguration

instance ToJSON UpdateRecommenderConfiguration where
  toJSON UpdateRecommenderConfiguration' {..} =
    object
      ( catMaybes
          [ ("RecommendationsDisplayName" .=)
              <$> _urcRecommendationsDisplayName,
            ("RecommendationTransformerUri" .=)
              <$> _urcRecommendationTransformerURI,
            ("Attributes" .=) <$> _urcAttributes,
            ("Name" .=) <$> _urcName,
            ("RecommendationsPerMessage" .=)
              <$> _urcRecommendationsPerMessage,
            ("Description" .=) <$> _urcDescription,
            ("RecommendationProviderIdType" .=)
              <$> _urcRecommendationProviderIdType,
            Just
              ( "RecommendationProviderUri"
                  .= _urcRecommendationProviderURI
              ),
            Just
              ( "RecommendationProviderRoleArn"
                  .= _urcRecommendationProviderRoleARN
              )
          ]
      )
