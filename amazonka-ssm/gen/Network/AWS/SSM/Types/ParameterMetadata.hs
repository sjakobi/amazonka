{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SSM.Types.ParameterMetadata
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SSM.Types.ParameterMetadata where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.SSM.Types.ParameterInlinePolicy
import Network.AWS.SSM.Types.ParameterTier
import Network.AWS.SSM.Types.ParameterType

-- | Metadata includes information like the ARN of the last user and the date/time the parameter was last used.
--
--
--
-- /See:/ 'parameterMetadata' smart constructor.
data ParameterMetadata = ParameterMetadata'
  { _pmLastModifiedDate ::
      !(Maybe POSIX),
    _pmPolicies ::
      !(Maybe [ParameterInlinePolicy]),
    _pmVersion :: !(Maybe Integer),
    _pmName :: !(Maybe Text),
    _pmDescription :: !(Maybe Text),
    _pmType :: !(Maybe ParameterType),
    _pmDataType :: !(Maybe Text),
    _pmAllowedPattern :: !(Maybe Text),
    _pmLastModifiedUser ::
      !(Maybe Text),
    _pmTier :: !(Maybe ParameterTier),
    _pmKeyId :: !(Maybe Text)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ParameterMetadata' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pmLastModifiedDate' - Date the parameter was last changed or updated.
--
-- * 'pmPolicies' - A list of policies associated with a parameter.
--
-- * 'pmVersion' - The parameter version.
--
-- * 'pmName' - The parameter name.
--
-- * 'pmDescription' - Description of the parameter actions.
--
-- * 'pmType' - The type of parameter. Valid parameter types include the following: @String@ , @StringList@ , and @SecureString@ .
--
-- * 'pmDataType' - The data type of the parameter, such as @text@ or @aws:ec2:image@ . The default is @text@ .
--
-- * 'pmAllowedPattern' - A parameter name can include only the following letters and symbols. a-zA-Z0-9_.-
--
-- * 'pmLastModifiedUser' - Amazon Resource Name (ARN) of the AWS user who last changed the parameter.
--
-- * 'pmTier' - The parameter tier.
--
-- * 'pmKeyId' - The ID of the query key used for this parameter.
parameterMetadata ::
  ParameterMetadata
parameterMetadata =
  ParameterMetadata'
    { _pmLastModifiedDate = Nothing,
      _pmPolicies = Nothing,
      _pmVersion = Nothing,
      _pmName = Nothing,
      _pmDescription = Nothing,
      _pmType = Nothing,
      _pmDataType = Nothing,
      _pmAllowedPattern = Nothing,
      _pmLastModifiedUser = Nothing,
      _pmTier = Nothing,
      _pmKeyId = Nothing
    }

-- | Date the parameter was last changed or updated.
pmLastModifiedDate :: Lens' ParameterMetadata (Maybe UTCTime)
pmLastModifiedDate = lens _pmLastModifiedDate (\s a -> s {_pmLastModifiedDate = a}) . mapping _Time

-- | A list of policies associated with a parameter.
pmPolicies :: Lens' ParameterMetadata [ParameterInlinePolicy]
pmPolicies = lens _pmPolicies (\s a -> s {_pmPolicies = a}) . _Default . _Coerce

-- | The parameter version.
pmVersion :: Lens' ParameterMetadata (Maybe Integer)
pmVersion = lens _pmVersion (\s a -> s {_pmVersion = a})

-- | The parameter name.
pmName :: Lens' ParameterMetadata (Maybe Text)
pmName = lens _pmName (\s a -> s {_pmName = a})

-- | Description of the parameter actions.
pmDescription :: Lens' ParameterMetadata (Maybe Text)
pmDescription = lens _pmDescription (\s a -> s {_pmDescription = a})

-- | The type of parameter. Valid parameter types include the following: @String@ , @StringList@ , and @SecureString@ .
pmType :: Lens' ParameterMetadata (Maybe ParameterType)
pmType = lens _pmType (\s a -> s {_pmType = a})

-- | The data type of the parameter, such as @text@ or @aws:ec2:image@ . The default is @text@ .
pmDataType :: Lens' ParameterMetadata (Maybe Text)
pmDataType = lens _pmDataType (\s a -> s {_pmDataType = a})

-- | A parameter name can include only the following letters and symbols. a-zA-Z0-9_.-
pmAllowedPattern :: Lens' ParameterMetadata (Maybe Text)
pmAllowedPattern = lens _pmAllowedPattern (\s a -> s {_pmAllowedPattern = a})

-- | Amazon Resource Name (ARN) of the AWS user who last changed the parameter.
pmLastModifiedUser :: Lens' ParameterMetadata (Maybe Text)
pmLastModifiedUser = lens _pmLastModifiedUser (\s a -> s {_pmLastModifiedUser = a})

-- | The parameter tier.
pmTier :: Lens' ParameterMetadata (Maybe ParameterTier)
pmTier = lens _pmTier (\s a -> s {_pmTier = a})

-- | The ID of the query key used for this parameter.
pmKeyId :: Lens' ParameterMetadata (Maybe Text)
pmKeyId = lens _pmKeyId (\s a -> s {_pmKeyId = a})

instance FromJSON ParameterMetadata where
  parseJSON =
    withObject
      "ParameterMetadata"
      ( \x ->
          ParameterMetadata'
            <$> (x .:? "LastModifiedDate")
            <*> (x .:? "Policies" .!= mempty)
            <*> (x .:? "Version")
            <*> (x .:? "Name")
            <*> (x .:? "Description")
            <*> (x .:? "Type")
            <*> (x .:? "DataType")
            <*> (x .:? "AllowedPattern")
            <*> (x .:? "LastModifiedUser")
            <*> (x .:? "Tier")
            <*> (x .:? "KeyId")
      )

instance Hashable ParameterMetadata

instance NFData ParameterMetadata
