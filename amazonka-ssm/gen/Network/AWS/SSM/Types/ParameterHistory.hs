{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SSM.Types.ParameterHistory
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SSM.Types.ParameterHistory where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.SSM.Types.ParameterInlinePolicy
import Network.AWS.SSM.Types.ParameterTier
import Network.AWS.SSM.Types.ParameterType

-- | Information about parameter usage.
--
--
--
-- /See:/ 'parameterHistory' smart constructor.
data ParameterHistory = ParameterHistory'
  { _phLastModifiedDate ::
      !(Maybe POSIX),
    _phPolicies ::
      !(Maybe [ParameterInlinePolicy]),
    _phLabels :: !(Maybe (List1 Text)),
    _phVersion :: !(Maybe Integer),
    _phName :: !(Maybe Text),
    _phDescription :: !(Maybe Text),
    _phValue :: !(Maybe Text),
    _phType :: !(Maybe ParameterType),
    _phDataType :: !(Maybe Text),
    _phAllowedPattern :: !(Maybe Text),
    _phLastModifiedUser :: !(Maybe Text),
    _phTier :: !(Maybe ParameterTier),
    _phKeyId :: !(Maybe Text)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ParameterHistory' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'phLastModifiedDate' - Date the parameter was last changed or updated.
--
-- * 'phPolicies' - Information about the policies assigned to a parameter. <https://docs.aws.amazon.com/systems-manager/latest/userguide/parameter-store-policies.html Assigning parameter policies> in the /AWS Systems Manager User Guide/ .
--
-- * 'phLabels' - Labels assigned to the parameter version.
--
-- * 'phVersion' - The parameter version.
--
-- * 'phName' - The name of the parameter.
--
-- * 'phDescription' - Information about the parameter.
--
-- * 'phValue' - The parameter value.
--
-- * 'phType' - The type of parameter used.
--
-- * 'phDataType' - The data type of the parameter, such as @text@ or @aws:ec2:image@ . The default is @text@ .
--
-- * 'phAllowedPattern' - Parameter names can include the following letters and symbols. a-zA-Z0-9_.-
--
-- * 'phLastModifiedUser' - Amazon Resource Name (ARN) of the AWS user who last changed the parameter.
--
-- * 'phTier' - The parameter tier.
--
-- * 'phKeyId' - The ID of the query key used for this parameter.
parameterHistory ::
  ParameterHistory
parameterHistory =
  ParameterHistory'
    { _phLastModifiedDate = Nothing,
      _phPolicies = Nothing,
      _phLabels = Nothing,
      _phVersion = Nothing,
      _phName = Nothing,
      _phDescription = Nothing,
      _phValue = Nothing,
      _phType = Nothing,
      _phDataType = Nothing,
      _phAllowedPattern = Nothing,
      _phLastModifiedUser = Nothing,
      _phTier = Nothing,
      _phKeyId = Nothing
    }

-- | Date the parameter was last changed or updated.
phLastModifiedDate :: Lens' ParameterHistory (Maybe UTCTime)
phLastModifiedDate = lens _phLastModifiedDate (\s a -> s {_phLastModifiedDate = a}) . mapping _Time

-- | Information about the policies assigned to a parameter. <https://docs.aws.amazon.com/systems-manager/latest/userguide/parameter-store-policies.html Assigning parameter policies> in the /AWS Systems Manager User Guide/ .
phPolicies :: Lens' ParameterHistory [ParameterInlinePolicy]
phPolicies = lens _phPolicies (\s a -> s {_phPolicies = a}) . _Default . _Coerce

-- | Labels assigned to the parameter version.
phLabels :: Lens' ParameterHistory (Maybe (NonEmpty Text))
phLabels = lens _phLabels (\s a -> s {_phLabels = a}) . mapping _List1

-- | The parameter version.
phVersion :: Lens' ParameterHistory (Maybe Integer)
phVersion = lens _phVersion (\s a -> s {_phVersion = a})

-- | The name of the parameter.
phName :: Lens' ParameterHistory (Maybe Text)
phName = lens _phName (\s a -> s {_phName = a})

-- | Information about the parameter.
phDescription :: Lens' ParameterHistory (Maybe Text)
phDescription = lens _phDescription (\s a -> s {_phDescription = a})

-- | The parameter value.
phValue :: Lens' ParameterHistory (Maybe Text)
phValue = lens _phValue (\s a -> s {_phValue = a})

-- | The type of parameter used.
phType :: Lens' ParameterHistory (Maybe ParameterType)
phType = lens _phType (\s a -> s {_phType = a})

-- | The data type of the parameter, such as @text@ or @aws:ec2:image@ . The default is @text@ .
phDataType :: Lens' ParameterHistory (Maybe Text)
phDataType = lens _phDataType (\s a -> s {_phDataType = a})

-- | Parameter names can include the following letters and symbols. a-zA-Z0-9_.-
phAllowedPattern :: Lens' ParameterHistory (Maybe Text)
phAllowedPattern = lens _phAllowedPattern (\s a -> s {_phAllowedPattern = a})

-- | Amazon Resource Name (ARN) of the AWS user who last changed the parameter.
phLastModifiedUser :: Lens' ParameterHistory (Maybe Text)
phLastModifiedUser = lens _phLastModifiedUser (\s a -> s {_phLastModifiedUser = a})

-- | The parameter tier.
phTier :: Lens' ParameterHistory (Maybe ParameterTier)
phTier = lens _phTier (\s a -> s {_phTier = a})

-- | The ID of the query key used for this parameter.
phKeyId :: Lens' ParameterHistory (Maybe Text)
phKeyId = lens _phKeyId (\s a -> s {_phKeyId = a})

instance FromJSON ParameterHistory where
  parseJSON =
    withObject
      "ParameterHistory"
      ( \x ->
          ParameterHistory'
            <$> (x .:? "LastModifiedDate")
            <*> (x .:? "Policies" .!= mempty)
            <*> (x .:? "Labels")
            <*> (x .:? "Version")
            <*> (x .:? "Name")
            <*> (x .:? "Description")
            <*> (x .:? "Value")
            <*> (x .:? "Type")
            <*> (x .:? "DataType")
            <*> (x .:? "AllowedPattern")
            <*> (x .:? "LastModifiedUser")
            <*> (x .:? "Tier")
            <*> (x .:? "KeyId")
      )

instance Hashable ParameterHistory

instance NFData ParameterHistory
