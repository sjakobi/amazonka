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
-- Module      : Network.AWS.AppStream.Types.ImageBuilderState
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.AppStream.Types.ImageBuilderState
  ( ImageBuilderState
      ( ..,
        ImageBuilderStateDELETING,
        ImageBuilderStateFAILED,
        ImageBuilderStatePENDING,
        ImageBuilderStateREBOOTING,
        ImageBuilderStateRUNNING,
        ImageBuilderStateSNAPSHOTTING,
        ImageBuilderStateSTOPPED,
        ImageBuilderStateSTOPPING,
        ImageBuilderStateUPDATINGAGENT
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype ImageBuilderState = ImageBuilderState'
  { fromImageBuilderState ::
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

pattern ImageBuilderStateDELETING :: ImageBuilderState
pattern ImageBuilderStateDELETING = ImageBuilderState' "DELETING"

pattern ImageBuilderStateFAILED :: ImageBuilderState
pattern ImageBuilderStateFAILED = ImageBuilderState' "FAILED"

pattern ImageBuilderStatePENDING :: ImageBuilderState
pattern ImageBuilderStatePENDING = ImageBuilderState' "PENDING"

pattern ImageBuilderStateREBOOTING :: ImageBuilderState
pattern ImageBuilderStateREBOOTING = ImageBuilderState' "REBOOTING"

pattern ImageBuilderStateRUNNING :: ImageBuilderState
pattern ImageBuilderStateRUNNING = ImageBuilderState' "RUNNING"

pattern ImageBuilderStateSNAPSHOTTING :: ImageBuilderState
pattern ImageBuilderStateSNAPSHOTTING = ImageBuilderState' "SNAPSHOTTING"

pattern ImageBuilderStateSTOPPED :: ImageBuilderState
pattern ImageBuilderStateSTOPPED = ImageBuilderState' "STOPPED"

pattern ImageBuilderStateSTOPPING :: ImageBuilderState
pattern ImageBuilderStateSTOPPING = ImageBuilderState' "STOPPING"

pattern ImageBuilderStateUPDATINGAGENT :: ImageBuilderState
pattern ImageBuilderStateUPDATINGAGENT = ImageBuilderState' "UPDATING_AGENT"

{-# COMPLETE
  ImageBuilderStateDELETING,
  ImageBuilderStateFAILED,
  ImageBuilderStatePENDING,
  ImageBuilderStateREBOOTING,
  ImageBuilderStateRUNNING,
  ImageBuilderStateSNAPSHOTTING,
  ImageBuilderStateSTOPPED,
  ImageBuilderStateSTOPPING,
  ImageBuilderStateUPDATINGAGENT,
  ImageBuilderState'
  #-}

instance Prelude.FromText ImageBuilderState where
  parser = ImageBuilderState' Prelude.<$> Prelude.takeText

instance Prelude.ToText ImageBuilderState where
  toText (ImageBuilderState' x) = x

instance Prelude.Hashable ImageBuilderState

instance Prelude.NFData ImageBuilderState

instance Prelude.ToByteString ImageBuilderState

instance Prelude.ToQuery ImageBuilderState

instance Prelude.ToHeader ImageBuilderState

instance Prelude.FromJSON ImageBuilderState where
  parseJSON = Prelude.parseJSONText "ImageBuilderState"
