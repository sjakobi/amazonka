{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.EC2.Types.DisableFastSnapshotRestoreStateError
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EC2.Types.DisableFastSnapshotRestoreStateError where

import Network.AWS.EC2.Internal
import Network.AWS.Lens
import Network.AWS.Prelude

-- | Describes an error that occurred when disabling fast snapshot restores.
--
--
--
-- /See:/ 'disableFastSnapshotRestoreStateError' smart constructor.
data DisableFastSnapshotRestoreStateError = DisableFastSnapshotRestoreStateError'
  { _dfsrseMessage ::
      !( Maybe
           Text
       ),
    _dfsrseCode ::
      !( Maybe
           Text
       )
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'DisableFastSnapshotRestoreStateError' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dfsrseMessage' - The error message.
--
-- * 'dfsrseCode' - The error code.
disableFastSnapshotRestoreStateError ::
  DisableFastSnapshotRestoreStateError
disableFastSnapshotRestoreStateError =
  DisableFastSnapshotRestoreStateError'
    { _dfsrseMessage =
        Nothing,
      _dfsrseCode = Nothing
    }

-- | The error message.
dfsrseMessage :: Lens' DisableFastSnapshotRestoreStateError (Maybe Text)
dfsrseMessage = lens _dfsrseMessage (\s a -> s {_dfsrseMessage = a})

-- | The error code.
dfsrseCode :: Lens' DisableFastSnapshotRestoreStateError (Maybe Text)
dfsrseCode = lens _dfsrseCode (\s a -> s {_dfsrseCode = a})

instance FromXML DisableFastSnapshotRestoreStateError where
  parseXML x =
    DisableFastSnapshotRestoreStateError'
      <$> (x .@? "message") <*> (x .@? "code")

instance
  Hashable
    DisableFastSnapshotRestoreStateError

instance NFData DisableFastSnapshotRestoreStateError
