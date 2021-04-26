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
-- Module      : Network.AWS.AppStream.Types.ImageState
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.AppStream.Types.ImageState
  ( ImageState
      ( ..,
        ImageStateAVAILABLE,
        ImageStateCOPYING,
        ImageStateCREATING,
        ImageStateDELETING,
        ImageStateFAILED,
        ImageStateIMPORTING,
        ImageStatePENDING
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype ImageState = ImageState'
  { fromImageState ::
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

pattern ImageStateAVAILABLE :: ImageState
pattern ImageStateAVAILABLE = ImageState' "AVAILABLE"

pattern ImageStateCOPYING :: ImageState
pattern ImageStateCOPYING = ImageState' "COPYING"

pattern ImageStateCREATING :: ImageState
pattern ImageStateCREATING = ImageState' "CREATING"

pattern ImageStateDELETING :: ImageState
pattern ImageStateDELETING = ImageState' "DELETING"

pattern ImageStateFAILED :: ImageState
pattern ImageStateFAILED = ImageState' "FAILED"

pattern ImageStateIMPORTING :: ImageState
pattern ImageStateIMPORTING = ImageState' "IMPORTING"

pattern ImageStatePENDING :: ImageState
pattern ImageStatePENDING = ImageState' "PENDING"

{-# COMPLETE
  ImageStateAVAILABLE,
  ImageStateCOPYING,
  ImageStateCREATING,
  ImageStateDELETING,
  ImageStateFAILED,
  ImageStateIMPORTING,
  ImageStatePENDING,
  ImageState'
  #-}

instance Prelude.FromText ImageState where
  parser = ImageState' Prelude.<$> Prelude.takeText

instance Prelude.ToText ImageState where
  toText (ImageState' x) = x

instance Prelude.Hashable ImageState

instance Prelude.NFData ImageState

instance Prelude.ToByteString ImageState

instance Prelude.ToQuery ImageState

instance Prelude.ToHeader ImageState

instance Prelude.FromJSON ImageState where
  parseJSON = Prelude.parseJSONText "ImageState"
