{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Cloud9.Types.Environment
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Cloud9.Types.Environment where

import Network.AWS.Cloud9.Types.ConnectionType
import Network.AWS.Cloud9.Types.EnvironmentLifecycle
import Network.AWS.Cloud9.Types.EnvironmentType
import Network.AWS.Lens
import Network.AWS.Prelude

-- | Information about an AWS Cloud9 development environment.
--
--
--
-- /See:/ 'environment' smart constructor.
data Environment = Environment'
  { _eLifecycle ::
      !(Maybe EnvironmentLifecycle),
    _eConnectionType :: !(Maybe ConnectionType),
    _eId :: !(Maybe Text),
    _eArn :: !(Maybe Text),
    _eName :: !(Maybe Text),
    _eOwnerARN :: !(Maybe Text),
    _eDescription :: !(Maybe (Sensitive Text)),
    _eType :: !(Maybe EnvironmentType)
  }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'Environment' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'eLifecycle' - The state of the environment in its creation or deletion lifecycle.
--
-- * 'eConnectionType' - The connection type used for connecting to an Amazon EC2 environment.
--
-- * 'eId' - The ID of the environment.
--
-- * 'eArn' - The Amazon Resource Name (ARN) of the environment.
--
-- * 'eName' - The name of the environment.
--
-- * 'eOwnerARN' - The Amazon Resource Name (ARN) of the environment owner.
--
-- * 'eDescription' - The description for the environment.
--
-- * 'eType' - The type of environment. Valid values include the following:     * @ec2@ : An Amazon Elastic Compute Cloud (Amazon EC2) instance connects to the environment.     * @ssh@ : Your own server connects to the environment.
environment ::
  Environment
environment =
  Environment'
    { _eLifecycle = Nothing,
      _eConnectionType = Nothing,
      _eId = Nothing,
      _eArn = Nothing,
      _eName = Nothing,
      _eOwnerARN = Nothing,
      _eDescription = Nothing,
      _eType = Nothing
    }

-- | The state of the environment in its creation or deletion lifecycle.
eLifecycle :: Lens' Environment (Maybe EnvironmentLifecycle)
eLifecycle = lens _eLifecycle (\s a -> s {_eLifecycle = a})

-- | The connection type used for connecting to an Amazon EC2 environment.
eConnectionType :: Lens' Environment (Maybe ConnectionType)
eConnectionType = lens _eConnectionType (\s a -> s {_eConnectionType = a})

-- | The ID of the environment.
eId :: Lens' Environment (Maybe Text)
eId = lens _eId (\s a -> s {_eId = a})

-- | The Amazon Resource Name (ARN) of the environment.
eArn :: Lens' Environment (Maybe Text)
eArn = lens _eArn (\s a -> s {_eArn = a})

-- | The name of the environment.
eName :: Lens' Environment (Maybe Text)
eName = lens _eName (\s a -> s {_eName = a})

-- | The Amazon Resource Name (ARN) of the environment owner.
eOwnerARN :: Lens' Environment (Maybe Text)
eOwnerARN = lens _eOwnerARN (\s a -> s {_eOwnerARN = a})

-- | The description for the environment.
eDescription :: Lens' Environment (Maybe Text)
eDescription = lens _eDescription (\s a -> s {_eDescription = a}) . mapping _Sensitive

-- | The type of environment. Valid values include the following:     * @ec2@ : An Amazon Elastic Compute Cloud (Amazon EC2) instance connects to the environment.     * @ssh@ : Your own server connects to the environment.
eType :: Lens' Environment (Maybe EnvironmentType)
eType = lens _eType (\s a -> s {_eType = a})

instance FromJSON Environment where
  parseJSON =
    withObject
      "Environment"
      ( \x ->
          Environment'
            <$> (x .:? "lifecycle")
            <*> (x .:? "connectionType")
            <*> (x .:? "id")
            <*> (x .:? "arn")
            <*> (x .:? "name")
            <*> (x .:? "ownerArn")
            <*> (x .:? "description")
            <*> (x .:? "type")
      )

instance Hashable Environment

instance NFData Environment
