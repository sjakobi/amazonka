{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.ElasticBeanstalk.Types.EnvironmentTier
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.ElasticBeanstalk.Types.EnvironmentTier where

import Network.AWS.Lens
import Network.AWS.Prelude

-- | Describes the properties of an environment tier
--
--
--
-- /See:/ 'environmentTier' smart constructor.
data EnvironmentTier = EnvironmentTier'
  { _etVersion ::
      !(Maybe Text),
    _etName :: !(Maybe Text),
    _etType :: !(Maybe Text)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'EnvironmentTier' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'etVersion' - The version of this environment tier. When you don't set a value to it, Elastic Beanstalk uses the latest compatible worker tier version.
--
-- * 'etName' - The name of this environment tier. Valid values:     * For /Web server tier/ – @WebServer@      * For /Worker tier/ – @Worker@
--
-- * 'etType' - The type of this environment tier. Valid values:     * For /Web server tier/ – @Standard@      * For /Worker tier/ – @SQS/HTTP@
environmentTier ::
  EnvironmentTier
environmentTier =
  EnvironmentTier'
    { _etVersion = Nothing,
      _etName = Nothing,
      _etType = Nothing
    }

-- | The version of this environment tier. When you don't set a value to it, Elastic Beanstalk uses the latest compatible worker tier version.
etVersion :: Lens' EnvironmentTier (Maybe Text)
etVersion = lens _etVersion (\s a -> s {_etVersion = a})

-- | The name of this environment tier. Valid values:     * For /Web server tier/ – @WebServer@      * For /Worker tier/ – @Worker@
etName :: Lens' EnvironmentTier (Maybe Text)
etName = lens _etName (\s a -> s {_etName = a})

-- | The type of this environment tier. Valid values:     * For /Web server tier/ – @Standard@      * For /Worker tier/ – @SQS/HTTP@
etType :: Lens' EnvironmentTier (Maybe Text)
etType = lens _etType (\s a -> s {_etType = a})

instance FromXML EnvironmentTier where
  parseXML x =
    EnvironmentTier'
      <$> (x .@? "Version")
      <*> (x .@? "Name")
      <*> (x .@? "Type")

instance Hashable EnvironmentTier

instance NFData EnvironmentTier

instance ToQuery EnvironmentTier where
  toQuery EnvironmentTier' {..} =
    mconcat
      [ "Version" =: _etVersion,
        "Name" =: _etName,
        "Type" =: _etType
      ]
