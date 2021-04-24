{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Pinpoint.Types.RecommenderConfigurationResponse
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Pinpoint.Types.RecommenderConfigurationResponse where

import Network.AWS.Lens
import Network.AWS.Prelude

-- | Provides information about Amazon Pinpoint configuration settings for retrieving and processing data from a recommender model.
--
--
--
-- /See:/ 'recommenderConfigurationResponse' smart constructor.
data RecommenderConfigurationResponse = RecommenderConfigurationResponse'
  { _rcrRecommendationsDisplayName ::
      !( Maybe
           Text
       ),
    _rcrRecommendationTransformerURI ::
      !( Maybe
           Text
       ),
    _rcrAttributes ::
      !( Maybe
           ( Map
               Text
               Text
           )
       ),
    _rcrName ::
      !( Maybe
           Text
       ),
    _rcrRecommendationsPerMessage ::
      !( Maybe
           Int
       ),
    _rcrDescription ::
      !( Maybe
           Text
       ),
    _rcrRecommendationProviderIdType ::
      !( Maybe
           Text
       ),
    _rcrRecommendationProviderURI ::
      !Text,
    _rcrLastModifiedDate ::
      !Text,
    _rcrCreationDate ::
      !Text,
    _rcrRecommendationProviderRoleARN ::
      !Text,
    _rcrId ::
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

-- | Creates a value of 'RecommenderConfigurationResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rcrRecommendationsDisplayName' - The custom display name for the standard endpoint or user attribute (RecommendationItems) that temporarily stores recommended items for each endpoint or user, depending on the value for the RecommendationProviderIdType property. This name appears in the __Attribute finder__ of the template editor on the Amazon Pinpoint console. This value is null if the configuration doesn't invoke an AWS Lambda function (RecommendationTransformerUri) to perform additional processing of recommendation data.
--
-- * 'rcrRecommendationTransformerURI' - The name or Amazon Resource Name (ARN) of the AWS Lambda function that Amazon Pinpoint invokes to perform additional processing of recommendation data that it retrieves from the recommender model.
--
-- * 'rcrAttributes' - A map that defines 1-10 custom endpoint or user attributes, depending on the value for the RecommendationProviderIdType property. Each of these attributes temporarily stores a recommended item that's retrieved from the recommender model and sent to an AWS Lambda function for additional processing. Each attribute can be used as a message variable in a message template. This value is null if the configuration doesn't invoke an AWS Lambda function (RecommendationTransformerUri) to perform additional processing of recommendation data.
--
-- * 'rcrName' - The custom name of the configuration for the recommender model.
--
-- * 'rcrRecommendationsPerMessage' - The number of recommended items that are retrieved from the model for each endpoint or user, depending on the value for the RecommendationProviderIdType property. This number determines how many recommended items are available for use in message variables.
--
-- * 'rcrDescription' - The custom description of the configuration for the recommender model.
--
-- * 'rcrRecommendationProviderIdType' - The type of Amazon Pinpoint ID that's associated with unique user IDs in the recommender model. This value enables the model to use attribute and event data that’s specific to a particular endpoint or user in an Amazon Pinpoint application. Possible values are:     * PINPOINT_ENDPOINT_ID - Each user in the model is associated with a particular endpoint in Amazon Pinpoint. The data is correlated based on endpoint IDs in Amazon Pinpoint. This is the default value.     * PINPOINT_USER_ID - Each user in the model is associated with a particular user and endpoint in Amazon Pinpoint. The data is correlated based on user IDs in Amazon Pinpoint. If this value is specified, an endpoint definition in Amazon Pinpoint has to specify both a user ID (UserId) and an endpoint ID. Otherwise, messages won’t be sent to the user's endpoint.
--
-- * 'rcrRecommendationProviderURI' - The Amazon Resource Name (ARN) of the recommender model that Amazon Pinpoint retrieves the recommendation data from. This value is the ARN of an Amazon Personalize campaign.
--
-- * 'rcrLastModifiedDate' - The date, in extended ISO 8601 format, when the configuration for the recommender model was last modified.
--
-- * 'rcrCreationDate' - The date, in extended ISO 8601 format, when the configuration was created for the recommender model.
--
-- * 'rcrRecommendationProviderRoleARN' - The Amazon Resource Name (ARN) of the AWS Identity and Access Management (IAM) role that authorizes Amazon Pinpoint to retrieve recommendation data from the recommender model.
--
-- * 'rcrId' - The unique identifier for the recommender model configuration.
recommenderConfigurationResponse ::
  -- | 'rcrRecommendationProviderURI'
  Text ->
  -- | 'rcrLastModifiedDate'
  Text ->
  -- | 'rcrCreationDate'
  Text ->
  -- | 'rcrRecommendationProviderRoleARN'
  Text ->
  -- | 'rcrId'
  Text ->
  RecommenderConfigurationResponse
recommenderConfigurationResponse
  pRecommendationProviderURI_
  pLastModifiedDate_
  pCreationDate_
  pRecommendationProviderRoleARN_
  pId_ =
    RecommenderConfigurationResponse'
      { _rcrRecommendationsDisplayName =
          Nothing,
        _rcrRecommendationTransformerURI =
          Nothing,
        _rcrAttributes = Nothing,
        _rcrName = Nothing,
        _rcrRecommendationsPerMessage = Nothing,
        _rcrDescription = Nothing,
        _rcrRecommendationProviderIdType =
          Nothing,
        _rcrRecommendationProviderURI =
          pRecommendationProviderURI_,
        _rcrLastModifiedDate = pLastModifiedDate_,
        _rcrCreationDate = pCreationDate_,
        _rcrRecommendationProviderRoleARN =
          pRecommendationProviderRoleARN_,
        _rcrId = pId_
      }

-- | The custom display name for the standard endpoint or user attribute (RecommendationItems) that temporarily stores recommended items for each endpoint or user, depending on the value for the RecommendationProviderIdType property. This name appears in the __Attribute finder__ of the template editor on the Amazon Pinpoint console. This value is null if the configuration doesn't invoke an AWS Lambda function (RecommendationTransformerUri) to perform additional processing of recommendation data.
rcrRecommendationsDisplayName :: Lens' RecommenderConfigurationResponse (Maybe Text)
rcrRecommendationsDisplayName = lens _rcrRecommendationsDisplayName (\s a -> s {_rcrRecommendationsDisplayName = a})

-- | The name or Amazon Resource Name (ARN) of the AWS Lambda function that Amazon Pinpoint invokes to perform additional processing of recommendation data that it retrieves from the recommender model.
rcrRecommendationTransformerURI :: Lens' RecommenderConfigurationResponse (Maybe Text)
rcrRecommendationTransformerURI = lens _rcrRecommendationTransformerURI (\s a -> s {_rcrRecommendationTransformerURI = a})

-- | A map that defines 1-10 custom endpoint or user attributes, depending on the value for the RecommendationProviderIdType property. Each of these attributes temporarily stores a recommended item that's retrieved from the recommender model and sent to an AWS Lambda function for additional processing. Each attribute can be used as a message variable in a message template. This value is null if the configuration doesn't invoke an AWS Lambda function (RecommendationTransformerUri) to perform additional processing of recommendation data.
rcrAttributes :: Lens' RecommenderConfigurationResponse (HashMap Text Text)
rcrAttributes = lens _rcrAttributes (\s a -> s {_rcrAttributes = a}) . _Default . _Map

-- | The custom name of the configuration for the recommender model.
rcrName :: Lens' RecommenderConfigurationResponse (Maybe Text)
rcrName = lens _rcrName (\s a -> s {_rcrName = a})

-- | The number of recommended items that are retrieved from the model for each endpoint or user, depending on the value for the RecommendationProviderIdType property. This number determines how many recommended items are available for use in message variables.
rcrRecommendationsPerMessage :: Lens' RecommenderConfigurationResponse (Maybe Int)
rcrRecommendationsPerMessage = lens _rcrRecommendationsPerMessage (\s a -> s {_rcrRecommendationsPerMessage = a})

-- | The custom description of the configuration for the recommender model.
rcrDescription :: Lens' RecommenderConfigurationResponse (Maybe Text)
rcrDescription = lens _rcrDescription (\s a -> s {_rcrDescription = a})

-- | The type of Amazon Pinpoint ID that's associated with unique user IDs in the recommender model. This value enables the model to use attribute and event data that’s specific to a particular endpoint or user in an Amazon Pinpoint application. Possible values are:     * PINPOINT_ENDPOINT_ID - Each user in the model is associated with a particular endpoint in Amazon Pinpoint. The data is correlated based on endpoint IDs in Amazon Pinpoint. This is the default value.     * PINPOINT_USER_ID - Each user in the model is associated with a particular user and endpoint in Amazon Pinpoint. The data is correlated based on user IDs in Amazon Pinpoint. If this value is specified, an endpoint definition in Amazon Pinpoint has to specify both a user ID (UserId) and an endpoint ID. Otherwise, messages won’t be sent to the user's endpoint.
rcrRecommendationProviderIdType :: Lens' RecommenderConfigurationResponse (Maybe Text)
rcrRecommendationProviderIdType = lens _rcrRecommendationProviderIdType (\s a -> s {_rcrRecommendationProviderIdType = a})

-- | The Amazon Resource Name (ARN) of the recommender model that Amazon Pinpoint retrieves the recommendation data from. This value is the ARN of an Amazon Personalize campaign.
rcrRecommendationProviderURI :: Lens' RecommenderConfigurationResponse Text
rcrRecommendationProviderURI = lens _rcrRecommendationProviderURI (\s a -> s {_rcrRecommendationProviderURI = a})

-- | The date, in extended ISO 8601 format, when the configuration for the recommender model was last modified.
rcrLastModifiedDate :: Lens' RecommenderConfigurationResponse Text
rcrLastModifiedDate = lens _rcrLastModifiedDate (\s a -> s {_rcrLastModifiedDate = a})

-- | The date, in extended ISO 8601 format, when the configuration was created for the recommender model.
rcrCreationDate :: Lens' RecommenderConfigurationResponse Text
rcrCreationDate = lens _rcrCreationDate (\s a -> s {_rcrCreationDate = a})

-- | The Amazon Resource Name (ARN) of the AWS Identity and Access Management (IAM) role that authorizes Amazon Pinpoint to retrieve recommendation data from the recommender model.
rcrRecommendationProviderRoleARN :: Lens' RecommenderConfigurationResponse Text
rcrRecommendationProviderRoleARN = lens _rcrRecommendationProviderRoleARN (\s a -> s {_rcrRecommendationProviderRoleARN = a})

-- | The unique identifier for the recommender model configuration.
rcrId :: Lens' RecommenderConfigurationResponse Text
rcrId = lens _rcrId (\s a -> s {_rcrId = a})

instance FromJSON RecommenderConfigurationResponse where
  parseJSON =
    withObject
      "RecommenderConfigurationResponse"
      ( \x ->
          RecommenderConfigurationResponse'
            <$> (x .:? "RecommendationsDisplayName")
            <*> (x .:? "RecommendationTransformerUri")
            <*> (x .:? "Attributes" .!= mempty)
            <*> (x .:? "Name")
            <*> (x .:? "RecommendationsPerMessage")
            <*> (x .:? "Description")
            <*> (x .:? "RecommendationProviderIdType")
            <*> (x .: "RecommendationProviderUri")
            <*> (x .: "LastModifiedDate")
            <*> (x .: "CreationDate")
            <*> (x .: "RecommendationProviderRoleArn")
            <*> (x .: "Id")
      )

instance Hashable RecommenderConfigurationResponse

instance NFData RecommenderConfigurationResponse
