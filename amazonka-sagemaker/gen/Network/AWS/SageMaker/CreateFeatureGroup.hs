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
-- Module      : Network.AWS.SageMaker.CreateFeatureGroup
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Create a new @FeatureGroup@ . A @FeatureGroup@ is a group of @Features@ defined in the @FeatureStore@ to describe a @Record@ .
--
--
-- The @FeatureGroup@ defines the schema and features contained in the FeatureGroup. A @FeatureGroup@ definition is composed of a list of @Features@ , a @RecordIdentifierFeatureName@ , an @EventTimeFeatureName@ and configurations for its @OnlineStore@ and @OfflineStore@ . Check <https://docs.aws.amazon.com/general/latest/gr/aws_service_limits.html AWS service quotas> to see the @FeatureGroup@ s quota for your AWS account.
--
-- /Important:/ You must include at least one of @OnlineStoreConfig@ and @OfflineStoreConfig@ to create a @FeatureGroup@ .
module Network.AWS.SageMaker.CreateFeatureGroup
  ( -- * Creating a Request
    createFeatureGroup,
    CreateFeatureGroup,

    -- * Request Lenses
    cfgOfflineStoreConfig,
    cfgRoleARN,
    cfgTags,
    cfgDescription,
    cfgOnlineStoreConfig,
    cfgFeatureGroupName,
    cfgRecordIdentifierFeatureName,
    cfgEventTimeFeatureName,
    cfgFeatureDefinitions,

    -- * Destructuring the Response
    createFeatureGroupResponse,
    CreateFeatureGroupResponse,

    -- * Response Lenses
    cfgrrsResponseStatus,
    cfgrrsFeatureGroupARN,
  )
where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.SageMaker.Types

-- | /See:/ 'createFeatureGroup' smart constructor.
data CreateFeatureGroup = CreateFeatureGroup'
  { _cfgOfflineStoreConfig ::
      !(Maybe OfflineStoreConfig),
    _cfgRoleARN :: !(Maybe Text),
    _cfgTags :: !(Maybe [Tag]),
    _cfgDescription :: !(Maybe Text),
    _cfgOnlineStoreConfig ::
      !(Maybe OnlineStoreConfig),
    _cfgFeatureGroupName :: !Text,
    _cfgRecordIdentifierFeatureName ::
      !Text,
    _cfgEventTimeFeatureName :: !Text,
    _cfgFeatureDefinitions ::
      !(List1 FeatureDefinition)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'CreateFeatureGroup' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cfgOfflineStoreConfig' - Use this to configure an @OfflineFeatureStore@ . This parameter allows you to specify:     * The Amazon Simple Storage Service (Amazon S3) location of an @OfflineStore@ .     * A configuration for an AWS Glue or AWS Hive data cataolgue.      * An KMS encryption key to encrypt the Amazon S3 location used for @OfflineStore@ . To learn more about this parameter, see 'OfflineStoreConfig' .
--
-- * 'cfgRoleARN' - The Amazon Resource Name (ARN) of the IAM execution role used to persist data into the @OfflineStore@ if an @OfflineStoreConfig@ is provided.
--
-- * 'cfgTags' - Tags used to identify @Features@ in each @FeatureGroup@ .
--
-- * 'cfgDescription' - A free-form description of a @FeatureGroup@ .
--
-- * 'cfgOnlineStoreConfig' - You can turn the @OnlineStore@ on or off by specifying @True@ for the @EnableOnlineStore@ flag in @OnlineStoreConfig@ ; the default value is @False@ . You can also include an AWS KMS key ID (@KMSKeyId@ ) for at-rest encryption of the @OnlineStore@ .
--
-- * 'cfgFeatureGroupName' - The name of the @FeatureGroup@ . The name must be unique within an AWS Region in an AWS account. The name:     * Must start and end with an alphanumeric character.     * Can only contain alphanumeric character and hyphens. Spaces are not allowed.
--
-- * 'cfgRecordIdentifierFeatureName' - The name of the @Feature@ whose value uniquely identifies a @Record@ defined in the @FeatureStore@ . Only the latest record per identifier value will be stored in the @OnlineStore@ . @RecordIdentifierFeatureName@ must be one of feature definitions' names. You use the @RecordIdentifierFeatureName@ to access data in a @FeatureStore@ . This name:     * Must start and end with an alphanumeric character.     * Can only contains alphanumeric characters, hyphens, underscores. Spaces are not allowed.
--
-- * 'cfgEventTimeFeatureName' - The name of the feature that stores the @EventTime@ of a @Record@ in a @FeatureGroup@ . An @EventTime@ is a point in time when a new event occurs that corresponds to the creation or update of a @Record@ in a @FeatureGroup@ . All @Records@ in the @FeatureGroup@ must have a corresponding @EventTime@ . An @EventTime@ can be a @String@ or @Fractional@ .      * @Fractional@ : @EventTime@ feature values must be a Unix timestamp in seconds.     * @String@ : @EventTime@ feature values must be an ISO-8601 string in the format. The following formats are supported @yyyy-MM-dd'T'HH:mm:ssZ@ and @yyyy-MM-dd'T'HH:mm:ss.SSSZ@ where @yyyy@ , @MM@ , and @dd@ represent the year, month, and day respectively and @HH@ , @mm@ , @ss@ , and if applicable, @SSS@ represent the hour, month, second and milliseconds respsectively. @'T'@ and @Z@ are constants.
--
-- * 'cfgFeatureDefinitions' - A list of @Feature@ names and types. @Name@ and @Type@ is compulsory per @Feature@ .  Valid feature @FeatureType@ s are @Integral@ , @Fractional@ and @String@ . @FeatureName@ s cannot be any of the following: @is_deleted@ , @write_time@ , @api_invocation_time@  You can create up to 2,500 @FeatureDefinition@ s per @FeatureGroup@ .
createFeatureGroup ::
  -- | 'cfgFeatureGroupName'
  Text ->
  -- | 'cfgRecordIdentifierFeatureName'
  Text ->
  -- | 'cfgEventTimeFeatureName'
  Text ->
  -- | 'cfgFeatureDefinitions'
  NonEmpty FeatureDefinition ->
  CreateFeatureGroup
createFeatureGroup
  pFeatureGroupName_
  pRecordIdentifierFeatureName_
  pEventTimeFeatureName_
  pFeatureDefinitions_ =
    CreateFeatureGroup'
      { _cfgOfflineStoreConfig =
          Nothing,
        _cfgRoleARN = Nothing,
        _cfgTags = Nothing,
        _cfgDescription = Nothing,
        _cfgOnlineStoreConfig = Nothing,
        _cfgFeatureGroupName = pFeatureGroupName_,
        _cfgRecordIdentifierFeatureName =
          pRecordIdentifierFeatureName_,
        _cfgEventTimeFeatureName = pEventTimeFeatureName_,
        _cfgFeatureDefinitions =
          _List1 # pFeatureDefinitions_
      }

-- | Use this to configure an @OfflineFeatureStore@ . This parameter allows you to specify:     * The Amazon Simple Storage Service (Amazon S3) location of an @OfflineStore@ .     * A configuration for an AWS Glue or AWS Hive data cataolgue.      * An KMS encryption key to encrypt the Amazon S3 location used for @OfflineStore@ . To learn more about this parameter, see 'OfflineStoreConfig' .
cfgOfflineStoreConfig :: Lens' CreateFeatureGroup (Maybe OfflineStoreConfig)
cfgOfflineStoreConfig = lens _cfgOfflineStoreConfig (\s a -> s {_cfgOfflineStoreConfig = a})

-- | The Amazon Resource Name (ARN) of the IAM execution role used to persist data into the @OfflineStore@ if an @OfflineStoreConfig@ is provided.
cfgRoleARN :: Lens' CreateFeatureGroup (Maybe Text)
cfgRoleARN = lens _cfgRoleARN (\s a -> s {_cfgRoleARN = a})

-- | Tags used to identify @Features@ in each @FeatureGroup@ .
cfgTags :: Lens' CreateFeatureGroup [Tag]
cfgTags = lens _cfgTags (\s a -> s {_cfgTags = a}) . _Default . _Coerce

-- | A free-form description of a @FeatureGroup@ .
cfgDescription :: Lens' CreateFeatureGroup (Maybe Text)
cfgDescription = lens _cfgDescription (\s a -> s {_cfgDescription = a})

-- | You can turn the @OnlineStore@ on or off by specifying @True@ for the @EnableOnlineStore@ flag in @OnlineStoreConfig@ ; the default value is @False@ . You can also include an AWS KMS key ID (@KMSKeyId@ ) for at-rest encryption of the @OnlineStore@ .
cfgOnlineStoreConfig :: Lens' CreateFeatureGroup (Maybe OnlineStoreConfig)
cfgOnlineStoreConfig = lens _cfgOnlineStoreConfig (\s a -> s {_cfgOnlineStoreConfig = a})

-- | The name of the @FeatureGroup@ . The name must be unique within an AWS Region in an AWS account. The name:     * Must start and end with an alphanumeric character.     * Can only contain alphanumeric character and hyphens. Spaces are not allowed.
cfgFeatureGroupName :: Lens' CreateFeatureGroup Text
cfgFeatureGroupName = lens _cfgFeatureGroupName (\s a -> s {_cfgFeatureGroupName = a})

-- | The name of the @Feature@ whose value uniquely identifies a @Record@ defined in the @FeatureStore@ . Only the latest record per identifier value will be stored in the @OnlineStore@ . @RecordIdentifierFeatureName@ must be one of feature definitions' names. You use the @RecordIdentifierFeatureName@ to access data in a @FeatureStore@ . This name:     * Must start and end with an alphanumeric character.     * Can only contains alphanumeric characters, hyphens, underscores. Spaces are not allowed.
cfgRecordIdentifierFeatureName :: Lens' CreateFeatureGroup Text
cfgRecordIdentifierFeatureName = lens _cfgRecordIdentifierFeatureName (\s a -> s {_cfgRecordIdentifierFeatureName = a})

-- | The name of the feature that stores the @EventTime@ of a @Record@ in a @FeatureGroup@ . An @EventTime@ is a point in time when a new event occurs that corresponds to the creation or update of a @Record@ in a @FeatureGroup@ . All @Records@ in the @FeatureGroup@ must have a corresponding @EventTime@ . An @EventTime@ can be a @String@ or @Fractional@ .      * @Fractional@ : @EventTime@ feature values must be a Unix timestamp in seconds.     * @String@ : @EventTime@ feature values must be an ISO-8601 string in the format. The following formats are supported @yyyy-MM-dd'T'HH:mm:ssZ@ and @yyyy-MM-dd'T'HH:mm:ss.SSSZ@ where @yyyy@ , @MM@ , and @dd@ represent the year, month, and day respectively and @HH@ , @mm@ , @ss@ , and if applicable, @SSS@ represent the hour, month, second and milliseconds respsectively. @'T'@ and @Z@ are constants.
cfgEventTimeFeatureName :: Lens' CreateFeatureGroup Text
cfgEventTimeFeatureName = lens _cfgEventTimeFeatureName (\s a -> s {_cfgEventTimeFeatureName = a})

-- | A list of @Feature@ names and types. @Name@ and @Type@ is compulsory per @Feature@ .  Valid feature @FeatureType@ s are @Integral@ , @Fractional@ and @String@ . @FeatureName@ s cannot be any of the following: @is_deleted@ , @write_time@ , @api_invocation_time@  You can create up to 2,500 @FeatureDefinition@ s per @FeatureGroup@ .
cfgFeatureDefinitions :: Lens' CreateFeatureGroup (NonEmpty FeatureDefinition)
cfgFeatureDefinitions = lens _cfgFeatureDefinitions (\s a -> s {_cfgFeatureDefinitions = a}) . _List1

instance AWSRequest CreateFeatureGroup where
  type
    Rs CreateFeatureGroup =
      CreateFeatureGroupResponse
  request = postJSON sageMaker
  response =
    receiveJSON
      ( \s h x ->
          CreateFeatureGroupResponse'
            <$> (pure (fromEnum s)) <*> (x .:> "FeatureGroupArn")
      )

instance Hashable CreateFeatureGroup

instance NFData CreateFeatureGroup

instance ToHeaders CreateFeatureGroup where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ("SageMaker.CreateFeatureGroup" :: ByteString),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON CreateFeatureGroup where
  toJSON CreateFeatureGroup' {..} =
    object
      ( catMaybes
          [ ("OfflineStoreConfig" .=)
              <$> _cfgOfflineStoreConfig,
            ("RoleArn" .=) <$> _cfgRoleARN,
            ("Tags" .=) <$> _cfgTags,
            ("Description" .=) <$> _cfgDescription,
            ("OnlineStoreConfig" .=) <$> _cfgOnlineStoreConfig,
            Just ("FeatureGroupName" .= _cfgFeatureGroupName),
            Just
              ( "RecordIdentifierFeatureName"
                  .= _cfgRecordIdentifierFeatureName
              ),
            Just
              ("EventTimeFeatureName" .= _cfgEventTimeFeatureName),
            Just
              ("FeatureDefinitions" .= _cfgFeatureDefinitions)
          ]
      )

instance ToPath CreateFeatureGroup where
  toPath = const "/"

instance ToQuery CreateFeatureGroup where
  toQuery = const mempty

-- | /See:/ 'createFeatureGroupResponse' smart constructor.
data CreateFeatureGroupResponse = CreateFeatureGroupResponse'
  { _cfgrrsResponseStatus ::
      !Int,
    _cfgrrsFeatureGroupARN ::
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

-- | Creates a value of 'CreateFeatureGroupResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cfgrrsResponseStatus' - -- | The response status code.
--
-- * 'cfgrrsFeatureGroupARN' - The Amazon Resource Name (ARN) of the @FeatureGroup@ . This is a unique identifier for the feature group.
createFeatureGroupResponse ::
  -- | 'cfgrrsResponseStatus'
  Int ->
  -- | 'cfgrrsFeatureGroupARN'
  Text ->
  CreateFeatureGroupResponse
createFeatureGroupResponse
  pResponseStatus_
  pFeatureGroupARN_ =
    CreateFeatureGroupResponse'
      { _cfgrrsResponseStatus =
          pResponseStatus_,
        _cfgrrsFeatureGroupARN = pFeatureGroupARN_
      }

-- | -- | The response status code.
cfgrrsResponseStatus :: Lens' CreateFeatureGroupResponse Int
cfgrrsResponseStatus = lens _cfgrrsResponseStatus (\s a -> s {_cfgrrsResponseStatus = a})

-- | The Amazon Resource Name (ARN) of the @FeatureGroup@ . This is a unique identifier for the feature group.
cfgrrsFeatureGroupARN :: Lens' CreateFeatureGroupResponse Text
cfgrrsFeatureGroupARN = lens _cfgrrsFeatureGroupARN (\s a -> s {_cfgrrsFeatureGroupARN = a})

instance NFData CreateFeatureGroupResponse
