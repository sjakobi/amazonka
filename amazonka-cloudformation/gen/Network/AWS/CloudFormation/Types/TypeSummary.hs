{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CloudFormation.Types.TypeSummary
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CloudFormation.Types.TypeSummary where

import Network.AWS.CloudFormation.Types.RegistryType
import Network.AWS.Lens
import Network.AWS.Prelude

-- | Contains summary information about the specified CloudFormation type.
--
--
--
-- /See:/ 'typeSummary' smart constructor.
data TypeSummary = TypeSummary'
  { _tsTypeName ::
      !(Maybe Text),
    _tsLastUpdated :: !(Maybe ISO8601),
    _tsDefaultVersionId :: !(Maybe Text),
    _tsDescription :: !(Maybe Text),
    _tsType :: !(Maybe RegistryType),
    _tsTypeARN :: !(Maybe Text)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'TypeSummary' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tsTypeName' - The name of the type.
--
-- * 'tsLastUpdated' - When the current default version of the type was registered.
--
-- * 'tsDefaultVersionId' - The ID of the default version of the type. The default version is used when the type version is not specified. To set the default version of a type, use @'SetTypeDefaultVersion' @ .
--
-- * 'tsDescription' - The description of the type.
--
-- * 'tsType' - The kind of type.
--
-- * 'tsTypeARN' - The Amazon Resource Name (ARN) of the type.
typeSummary ::
  TypeSummary
typeSummary =
  TypeSummary'
    { _tsTypeName = Nothing,
      _tsLastUpdated = Nothing,
      _tsDefaultVersionId = Nothing,
      _tsDescription = Nothing,
      _tsType = Nothing,
      _tsTypeARN = Nothing
    }

-- | The name of the type.
tsTypeName :: Lens' TypeSummary (Maybe Text)
tsTypeName = lens _tsTypeName (\s a -> s {_tsTypeName = a})

-- | When the current default version of the type was registered.
tsLastUpdated :: Lens' TypeSummary (Maybe UTCTime)
tsLastUpdated = lens _tsLastUpdated (\s a -> s {_tsLastUpdated = a}) . mapping _Time

-- | The ID of the default version of the type. The default version is used when the type version is not specified. To set the default version of a type, use @'SetTypeDefaultVersion' @ .
tsDefaultVersionId :: Lens' TypeSummary (Maybe Text)
tsDefaultVersionId = lens _tsDefaultVersionId (\s a -> s {_tsDefaultVersionId = a})

-- | The description of the type.
tsDescription :: Lens' TypeSummary (Maybe Text)
tsDescription = lens _tsDescription (\s a -> s {_tsDescription = a})

-- | The kind of type.
tsType :: Lens' TypeSummary (Maybe RegistryType)
tsType = lens _tsType (\s a -> s {_tsType = a})

-- | The Amazon Resource Name (ARN) of the type.
tsTypeARN :: Lens' TypeSummary (Maybe Text)
tsTypeARN = lens _tsTypeARN (\s a -> s {_tsTypeARN = a})

instance FromXML TypeSummary where
  parseXML x =
    TypeSummary'
      <$> (x .@? "TypeName")
      <*> (x .@? "LastUpdated")
      <*> (x .@? "DefaultVersionId")
      <*> (x .@? "Description")
      <*> (x .@? "Type")
      <*> (x .@? "TypeArn")

instance Hashable TypeSummary

instance NFData TypeSummary
