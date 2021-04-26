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
-- Module      : Network.AWS.EC2.Types.ImageState
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EC2.Types.ImageState
  ( ImageState
      ( ..,
        ImageStateAvailable,
        ImageStateDeregistered,
        ImageStateError,
        ImageStateFailed,
        ImageStateInvalid,
        ImageStatePending,
        ImageStateTransient
      ),
  )
where

import Network.AWS.EC2.Internal
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

pattern ImageStateAvailable :: ImageState
pattern ImageStateAvailable = ImageState' "available"

pattern ImageStateDeregistered :: ImageState
pattern ImageStateDeregistered = ImageState' "deregistered"

pattern ImageStateError :: ImageState
pattern ImageStateError = ImageState' "error"

pattern ImageStateFailed :: ImageState
pattern ImageStateFailed = ImageState' "failed"

pattern ImageStateInvalid :: ImageState
pattern ImageStateInvalid = ImageState' "invalid"

pattern ImageStatePending :: ImageState
pattern ImageStatePending = ImageState' "pending"

pattern ImageStateTransient :: ImageState
pattern ImageStateTransient = ImageState' "transient"

{-# COMPLETE
  ImageStateAvailable,
  ImageStateDeregistered,
  ImageStateError,
  ImageStateFailed,
  ImageStateInvalid,
  ImageStatePending,
  ImageStateTransient,
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

instance Prelude.FromXML ImageState where
  parseXML = Prelude.parseXMLText "ImageState"
