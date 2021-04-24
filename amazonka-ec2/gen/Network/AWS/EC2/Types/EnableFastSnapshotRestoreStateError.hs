{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.EC2.Types.EnableFastSnapshotRestoreStateError
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EC2.Types.EnableFastSnapshotRestoreStateError where

import Network.AWS.EC2.Internal
import Network.AWS.Lens
import Network.AWS.Prelude

-- | Describes an error that occurred when enabling fast snapshot restores.
--
--
--
-- /See:/ 'enableFastSnapshotRestoreStateError' smart constructor.
data EnableFastSnapshotRestoreStateError = EnableFastSnapshotRestoreStateError'
  { _efsrseMessage ::
      !( Maybe
           Text
       ),
    _efsrseCode ::
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

-- | Creates a value of 'EnableFastSnapshotRestoreStateError' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'efsrseMessage' - The error message.
--
-- * 'efsrseCode' - The error code.
enableFastSnapshotRestoreStateError ::
  EnableFastSnapshotRestoreStateError
enableFastSnapshotRestoreStateError =
  EnableFastSnapshotRestoreStateError'
    { _efsrseMessage =
        Nothing,
      _efsrseCode = Nothing
    }

-- | The error message.
efsrseMessage :: Lens' EnableFastSnapshotRestoreStateError (Maybe Text)
efsrseMessage = lens _efsrseMessage (\s a -> s {_efsrseMessage = a})

-- | The error code.
efsrseCode :: Lens' EnableFastSnapshotRestoreStateError (Maybe Text)
efsrseCode = lens _efsrseCode (\s a -> s {_efsrseCode = a})

instance FromXML EnableFastSnapshotRestoreStateError where
  parseXML x =
    EnableFastSnapshotRestoreStateError'
      <$> (x .@? "message") <*> (x .@? "code")

instance Hashable EnableFastSnapshotRestoreStateError

instance NFData EnableFastSnapshotRestoreStateError
