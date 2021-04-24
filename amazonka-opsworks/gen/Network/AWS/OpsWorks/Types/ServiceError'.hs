{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.OpsWorks.Types.ServiceError'
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.OpsWorks.Types.ServiceError' where

import Network.AWS.Lens
import Network.AWS.Prelude

-- | Describes an AWS OpsWorks Stacks service error.
--
--
--
-- /See:/ 'serviceError'' smart constructor.
data ServiceError' = ServiceError''
  { _seInstanceId ::
      !(Maybe Text),
    _seStackId :: !(Maybe Text),
    _seMessage :: !(Maybe Text),
    _seServiceErrorId :: !(Maybe Text),
    _seCreatedAt :: !(Maybe Text),
    _seType :: !(Maybe Text)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ServiceError'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'seInstanceId' - The instance ID.
--
-- * 'seStackId' - The stack ID.
--
-- * 'seMessage' - A message that describes the error.
--
-- * 'seServiceErrorId' - The error ID.
--
-- * 'seCreatedAt' - When the error occurred.
--
-- * 'seType' - The error type.
serviceError' ::
  ServiceError'
serviceError' =
  ServiceError''
    { _seInstanceId = Nothing,
      _seStackId = Nothing,
      _seMessage = Nothing,
      _seServiceErrorId = Nothing,
      _seCreatedAt = Nothing,
      _seType = Nothing
    }

-- | The instance ID.
seInstanceId :: Lens' ServiceError' (Maybe Text)
seInstanceId = lens _seInstanceId (\s a -> s {_seInstanceId = a})

-- | The stack ID.
seStackId :: Lens' ServiceError' (Maybe Text)
seStackId = lens _seStackId (\s a -> s {_seStackId = a})

-- | A message that describes the error.
seMessage :: Lens' ServiceError' (Maybe Text)
seMessage = lens _seMessage (\s a -> s {_seMessage = a})

-- | The error ID.
seServiceErrorId :: Lens' ServiceError' (Maybe Text)
seServiceErrorId = lens _seServiceErrorId (\s a -> s {_seServiceErrorId = a})

-- | When the error occurred.
seCreatedAt :: Lens' ServiceError' (Maybe Text)
seCreatedAt = lens _seCreatedAt (\s a -> s {_seCreatedAt = a})

-- | The error type.
seType :: Lens' ServiceError' (Maybe Text)
seType = lens _seType (\s a -> s {_seType = a})

instance FromJSON ServiceError' where
  parseJSON =
    withObject
      "ServiceError'"
      ( \x ->
          ServiceError''
            <$> (x .:? "InstanceId")
            <*> (x .:? "StackId")
            <*> (x .:? "Message")
            <*> (x .:? "ServiceErrorId")
            <*> (x .:? "CreatedAt")
            <*> (x .:? "Type")
      )

instance Hashable ServiceError'

instance NFData ServiceError'
