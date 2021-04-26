{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.DeviceFarm.Types.TestGridSessionStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.DeviceFarm.Types.TestGridSessionStatus
  ( TestGridSessionStatus
      ( ..,
        TestGridSessionStatusACTIVE,
        TestGridSessionStatusCLOSED,
        TestGridSessionStatusERRORED
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype TestGridSessionStatus = TestGridSessionStatus'
  { fromTestGridSessionStatus ::
      Prelude.Text
  }
  deriving
    ( Prelude.Eq,
      Prelude.Ord,
      Prelude.Read,
      Prelude.Show,
      Prelude.Data,
      Prelude.Typeable,
      Prelude.Generic
    )

pattern TestGridSessionStatusACTIVE :: TestGridSessionStatus
pattern TestGridSessionStatusACTIVE = TestGridSessionStatus' "ACTIVE"

pattern TestGridSessionStatusCLOSED :: TestGridSessionStatus
pattern TestGridSessionStatusCLOSED = TestGridSessionStatus' "CLOSED"

pattern TestGridSessionStatusERRORED :: TestGridSessionStatus
pattern TestGridSessionStatusERRORED = TestGridSessionStatus' "ERRORED"

{-# COMPLETE
  TestGridSessionStatusACTIVE,
  TestGridSessionStatusCLOSED,
  TestGridSessionStatusERRORED,
  TestGridSessionStatus'
  #-}

instance Prelude.FromText TestGridSessionStatus where
  parser = TestGridSessionStatus' Prelude.<$> Prelude.takeText

instance Prelude.ToText TestGridSessionStatus where
  toText (TestGridSessionStatus' x) = x

instance Prelude.Hashable TestGridSessionStatus

instance Prelude.NFData TestGridSessionStatus

instance Prelude.ToByteString TestGridSessionStatus

instance Prelude.ToQuery TestGridSessionStatus

instance Prelude.ToHeader TestGridSessionStatus

instance Prelude.ToJSON TestGridSessionStatus where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON TestGridSessionStatus where
  parseJSON = Prelude.parseJSONText "TestGridSessionStatus"
