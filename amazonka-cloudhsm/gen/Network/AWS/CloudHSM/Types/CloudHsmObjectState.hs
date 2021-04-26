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
-- Module      : Network.AWS.CloudHSM.Types.CloudHsmObjectState
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CloudHSM.Types.CloudHsmObjectState
  ( CloudHsmObjectState
      ( ..,
        CloudHsmObjectStateDEGRADED,
        CloudHsmObjectStateREADY,
        CloudHsmObjectStateUPDATING
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype CloudHsmObjectState = CloudHsmObjectState'
  { fromCloudHsmObjectState ::
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

pattern CloudHsmObjectStateDEGRADED :: CloudHsmObjectState
pattern CloudHsmObjectStateDEGRADED = CloudHsmObjectState' "DEGRADED"

pattern CloudHsmObjectStateREADY :: CloudHsmObjectState
pattern CloudHsmObjectStateREADY = CloudHsmObjectState' "READY"

pattern CloudHsmObjectStateUPDATING :: CloudHsmObjectState
pattern CloudHsmObjectStateUPDATING = CloudHsmObjectState' "UPDATING"

{-# COMPLETE
  CloudHsmObjectStateDEGRADED,
  CloudHsmObjectStateREADY,
  CloudHsmObjectStateUPDATING,
  CloudHsmObjectState'
  #-}

instance Prelude.FromText CloudHsmObjectState where
  parser = CloudHsmObjectState' Prelude.<$> Prelude.takeText

instance Prelude.ToText CloudHsmObjectState where
  toText (CloudHsmObjectState' x) = x

instance Prelude.Hashable CloudHsmObjectState

instance Prelude.NFData CloudHsmObjectState

instance Prelude.ToByteString CloudHsmObjectState

instance Prelude.ToQuery CloudHsmObjectState

instance Prelude.ToHeader CloudHsmObjectState

instance Prelude.FromJSON CloudHsmObjectState where
  parseJSON = Prelude.parseJSONText "CloudHsmObjectState"
