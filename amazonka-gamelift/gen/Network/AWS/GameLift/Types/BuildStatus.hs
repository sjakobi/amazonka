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
-- Module      : Network.AWS.GameLift.Types.BuildStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.GameLift.Types.BuildStatus
  ( BuildStatus
      ( ..,
        BuildStatusFAILED,
        BuildStatusINITIALIZED,
        BuildStatusREADY
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype BuildStatus = BuildStatus'
  { fromBuildStatus ::
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

pattern BuildStatusFAILED :: BuildStatus
pattern BuildStatusFAILED = BuildStatus' "FAILED"

pattern BuildStatusINITIALIZED :: BuildStatus
pattern BuildStatusINITIALIZED = BuildStatus' "INITIALIZED"

pattern BuildStatusREADY :: BuildStatus
pattern BuildStatusREADY = BuildStatus' "READY"

{-# COMPLETE
  BuildStatusFAILED,
  BuildStatusINITIALIZED,
  BuildStatusREADY,
  BuildStatus'
  #-}

instance Prelude.FromText BuildStatus where
  parser = BuildStatus' Prelude.<$> Prelude.takeText

instance Prelude.ToText BuildStatus where
  toText (BuildStatus' x) = x

instance Prelude.Hashable BuildStatus

instance Prelude.NFData BuildStatus

instance Prelude.ToByteString BuildStatus

instance Prelude.ToQuery BuildStatus

instance Prelude.ToHeader BuildStatus

instance Prelude.ToJSON BuildStatus where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON BuildStatus where
  parseJSON = Prelude.parseJSONText "BuildStatus"
