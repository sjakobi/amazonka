{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CloudFormation.Types.TypeVersionSummary
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CloudFormation.Types.TypeVersionSummary where

import Network.AWS.CloudFormation.Types.RegistryType
import Network.AWS.Lens
import Network.AWS.Prelude

-- | Contains summary information about a specific version of a CloudFormation type.
--
--
--
-- /See:/ 'typeVersionSummary' smart constructor.
data TypeVersionSummary = TypeVersionSummary'
  { _tvsTypeName ::
      !(Maybe Text),
    _tvsARN :: !(Maybe Text),
    _tvsVersionId :: !(Maybe Text),
    _tvsDescription :: !(Maybe Text),
    _tvsIsDefaultVersion ::
      !(Maybe Bool),
    _tvsType :: !(Maybe RegistryType),
    _tvsTimeCreated ::
      !(Maybe ISO8601)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'TypeVersionSummary' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tvsTypeName' - The name of the type.
--
-- * 'tvsARN' - The Amazon Resource Name (ARN) of the type version.
--
-- * 'tvsVersionId' - The ID of a specific version of the type. The version ID is the value at the end of the Amazon Resource Name (ARN) assigned to the type version when it is registered.
--
-- * 'tvsDescription' - The description of the type version.
--
-- * 'tvsIsDefaultVersion' - Whether the specified type version is set as the default version.
--
-- * 'tvsType' - The kind of type.
--
-- * 'tvsTimeCreated' - When the version was registered.
typeVersionSummary ::
  TypeVersionSummary
typeVersionSummary =
  TypeVersionSummary'
    { _tvsTypeName = Nothing,
      _tvsARN = Nothing,
      _tvsVersionId = Nothing,
      _tvsDescription = Nothing,
      _tvsIsDefaultVersion = Nothing,
      _tvsType = Nothing,
      _tvsTimeCreated = Nothing
    }

-- | The name of the type.
tvsTypeName :: Lens' TypeVersionSummary (Maybe Text)
tvsTypeName = lens _tvsTypeName (\s a -> s {_tvsTypeName = a})

-- | The Amazon Resource Name (ARN) of the type version.
tvsARN :: Lens' TypeVersionSummary (Maybe Text)
tvsARN = lens _tvsARN (\s a -> s {_tvsARN = a})

-- | The ID of a specific version of the type. The version ID is the value at the end of the Amazon Resource Name (ARN) assigned to the type version when it is registered.
tvsVersionId :: Lens' TypeVersionSummary (Maybe Text)
tvsVersionId = lens _tvsVersionId (\s a -> s {_tvsVersionId = a})

-- | The description of the type version.
tvsDescription :: Lens' TypeVersionSummary (Maybe Text)
tvsDescription = lens _tvsDescription (\s a -> s {_tvsDescription = a})

-- | Whether the specified type version is set as the default version.
tvsIsDefaultVersion :: Lens' TypeVersionSummary (Maybe Bool)
tvsIsDefaultVersion = lens _tvsIsDefaultVersion (\s a -> s {_tvsIsDefaultVersion = a})

-- | The kind of type.
tvsType :: Lens' TypeVersionSummary (Maybe RegistryType)
tvsType = lens _tvsType (\s a -> s {_tvsType = a})

-- | When the version was registered.
tvsTimeCreated :: Lens' TypeVersionSummary (Maybe UTCTime)
tvsTimeCreated = lens _tvsTimeCreated (\s a -> s {_tvsTimeCreated = a}) . mapping _Time

instance FromXML TypeVersionSummary where
  parseXML x =
    TypeVersionSummary'
      <$> (x .@? "TypeName")
      <*> (x .@? "Arn")
      <*> (x .@? "VersionId")
      <*> (x .@? "Description")
      <*> (x .@? "IsDefaultVersion")
      <*> (x .@? "Type")
      <*> (x .@? "TimeCreated")

instance Hashable TypeVersionSummary

instance NFData TypeVersionSummary
