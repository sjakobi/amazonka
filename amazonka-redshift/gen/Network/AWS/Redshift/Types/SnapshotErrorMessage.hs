{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Redshift.Types.SnapshotErrorMessage
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Redshift.Types.SnapshotErrorMessage where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Redshift.Internal

-- | Describes the errors returned by a snapshot.
--
--
--
-- /See:/ 'snapshotErrorMessage' smart constructor.
data SnapshotErrorMessage = SnapshotErrorMessage'
  { _semSnapshotIdentifier ::
      !(Maybe Text),
    _semFailureCode ::
      !(Maybe Text),
    _semSnapshotClusterIdentifier ::
      !(Maybe Text),
    _semFailureReason ::
      !(Maybe Text)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'SnapshotErrorMessage' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'semSnapshotIdentifier' - A unique identifier for the snapshot returning the error.
--
-- * 'semFailureCode' - The failure code for the error.
--
-- * 'semSnapshotClusterIdentifier' - A unique identifier for the cluster.
--
-- * 'semFailureReason' - The text message describing the error.
snapshotErrorMessage ::
  SnapshotErrorMessage
snapshotErrorMessage =
  SnapshotErrorMessage'
    { _semSnapshotIdentifier =
        Nothing,
      _semFailureCode = Nothing,
      _semSnapshotClusterIdentifier = Nothing,
      _semFailureReason = Nothing
    }

-- | A unique identifier for the snapshot returning the error.
semSnapshotIdentifier :: Lens' SnapshotErrorMessage (Maybe Text)
semSnapshotIdentifier = lens _semSnapshotIdentifier (\s a -> s {_semSnapshotIdentifier = a})

-- | The failure code for the error.
semFailureCode :: Lens' SnapshotErrorMessage (Maybe Text)
semFailureCode = lens _semFailureCode (\s a -> s {_semFailureCode = a})

-- | A unique identifier for the cluster.
semSnapshotClusterIdentifier :: Lens' SnapshotErrorMessage (Maybe Text)
semSnapshotClusterIdentifier = lens _semSnapshotClusterIdentifier (\s a -> s {_semSnapshotClusterIdentifier = a})

-- | The text message describing the error.
semFailureReason :: Lens' SnapshotErrorMessage (Maybe Text)
semFailureReason = lens _semFailureReason (\s a -> s {_semFailureReason = a})

instance FromXML SnapshotErrorMessage where
  parseXML x =
    SnapshotErrorMessage'
      <$> (x .@? "SnapshotIdentifier")
      <*> (x .@? "FailureCode")
      <*> (x .@? "SnapshotClusterIdentifier")
      <*> (x .@? "FailureReason")

instance Hashable SnapshotErrorMessage

instance NFData SnapshotErrorMessage
