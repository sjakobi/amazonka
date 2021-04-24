{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.ElastiCache.Types.Parameter
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.ElastiCache.Types.Parameter where

import Network.AWS.ElastiCache.Types.ChangeType
import Network.AWS.Lens
import Network.AWS.Prelude

-- | Describes an individual setting that controls some aspect of ElastiCache behavior.
--
--
--
-- /See:/ 'parameter' smart constructor.
data Parameter = Parameter'
  { _pChangeType ::
      !(Maybe ChangeType),
    _pAllowedValues :: !(Maybe Text),
    _pSource :: !(Maybe Text),
    _pParameterValue :: !(Maybe Text),
    _pParameterName :: !(Maybe Text),
    _pDescription :: !(Maybe Text),
    _pDataType :: !(Maybe Text),
    _pIsModifiable :: !(Maybe Bool),
    _pMinimumEngineVersion :: !(Maybe Text)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'Parameter' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pChangeType' - Indicates whether a change to the parameter is applied immediately or requires a reboot for the change to be applied. You can force a reboot or wait until the next maintenance window's reboot. For more information, see <https://docs.aws.amazon.com/AmazonElastiCache/latest/red-ug/Clusters.Rebooting.html Rebooting a Cluster> .
--
-- * 'pAllowedValues' - The valid range of values for the parameter.
--
-- * 'pSource' - The source of the parameter.
--
-- * 'pParameterValue' - The value of the parameter.
--
-- * 'pParameterName' - The name of the parameter.
--
-- * 'pDescription' - A description of the parameter.
--
-- * 'pDataType' - The valid data type for the parameter.
--
-- * 'pIsModifiable' - Indicates whether (@true@ ) or not (@false@ ) the parameter can be modified. Some parameters have security or operational implications that prevent them from being changed.
--
-- * 'pMinimumEngineVersion' - The earliest cache engine version to which the parameter can apply.
parameter ::
  Parameter
parameter =
  Parameter'
    { _pChangeType = Nothing,
      _pAllowedValues = Nothing,
      _pSource = Nothing,
      _pParameterValue = Nothing,
      _pParameterName = Nothing,
      _pDescription = Nothing,
      _pDataType = Nothing,
      _pIsModifiable = Nothing,
      _pMinimumEngineVersion = Nothing
    }

-- | Indicates whether a change to the parameter is applied immediately or requires a reboot for the change to be applied. You can force a reboot or wait until the next maintenance window's reboot. For more information, see <https://docs.aws.amazon.com/AmazonElastiCache/latest/red-ug/Clusters.Rebooting.html Rebooting a Cluster> .
pChangeType :: Lens' Parameter (Maybe ChangeType)
pChangeType = lens _pChangeType (\s a -> s {_pChangeType = a})

-- | The valid range of values for the parameter.
pAllowedValues :: Lens' Parameter (Maybe Text)
pAllowedValues = lens _pAllowedValues (\s a -> s {_pAllowedValues = a})

-- | The source of the parameter.
pSource :: Lens' Parameter (Maybe Text)
pSource = lens _pSource (\s a -> s {_pSource = a})

-- | The value of the parameter.
pParameterValue :: Lens' Parameter (Maybe Text)
pParameterValue = lens _pParameterValue (\s a -> s {_pParameterValue = a})

-- | The name of the parameter.
pParameterName :: Lens' Parameter (Maybe Text)
pParameterName = lens _pParameterName (\s a -> s {_pParameterName = a})

-- | A description of the parameter.
pDescription :: Lens' Parameter (Maybe Text)
pDescription = lens _pDescription (\s a -> s {_pDescription = a})

-- | The valid data type for the parameter.
pDataType :: Lens' Parameter (Maybe Text)
pDataType = lens _pDataType (\s a -> s {_pDataType = a})

-- | Indicates whether (@true@ ) or not (@false@ ) the parameter can be modified. Some parameters have security or operational implications that prevent them from being changed.
pIsModifiable :: Lens' Parameter (Maybe Bool)
pIsModifiable = lens _pIsModifiable (\s a -> s {_pIsModifiable = a})

-- | The earliest cache engine version to which the parameter can apply.
pMinimumEngineVersion :: Lens' Parameter (Maybe Text)
pMinimumEngineVersion = lens _pMinimumEngineVersion (\s a -> s {_pMinimumEngineVersion = a})

instance FromXML Parameter where
  parseXML x =
    Parameter'
      <$> (x .@? "ChangeType")
      <*> (x .@? "AllowedValues")
      <*> (x .@? "Source")
      <*> (x .@? "ParameterValue")
      <*> (x .@? "ParameterName")
      <*> (x .@? "Description")
      <*> (x .@? "DataType")
      <*> (x .@? "IsModifiable")
      <*> (x .@? "MinimumEngineVersion")

instance Hashable Parameter

instance NFData Parameter
