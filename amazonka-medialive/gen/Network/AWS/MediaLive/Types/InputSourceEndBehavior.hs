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
-- Module      : Network.AWS.MediaLive.Types.InputSourceEndBehavior
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaLive.Types.InputSourceEndBehavior
  ( InputSourceEndBehavior
      ( ..,
        InputSourceEndBehaviorCONTINUE,
        InputSourceEndBehaviorLOOP
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

-- | Input Source End Behavior
newtype InputSourceEndBehavior = InputSourceEndBehavior'
  { fromInputSourceEndBehavior ::
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

pattern InputSourceEndBehaviorCONTINUE :: InputSourceEndBehavior
pattern InputSourceEndBehaviorCONTINUE = InputSourceEndBehavior' "CONTINUE"

pattern InputSourceEndBehaviorLOOP :: InputSourceEndBehavior
pattern InputSourceEndBehaviorLOOP = InputSourceEndBehavior' "LOOP"

{-# COMPLETE
  InputSourceEndBehaviorCONTINUE,
  InputSourceEndBehaviorLOOP,
  InputSourceEndBehavior'
  #-}

instance Prelude.FromText InputSourceEndBehavior where
  parser = InputSourceEndBehavior' Prelude.<$> Prelude.takeText

instance Prelude.ToText InputSourceEndBehavior where
  toText (InputSourceEndBehavior' x) = x

instance Prelude.Hashable InputSourceEndBehavior

instance Prelude.NFData InputSourceEndBehavior

instance Prelude.ToByteString InputSourceEndBehavior

instance Prelude.ToQuery InputSourceEndBehavior

instance Prelude.ToHeader InputSourceEndBehavior

instance Prelude.ToJSON InputSourceEndBehavior where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON InputSourceEndBehavior where
  parseJSON = Prelude.parseJSONText "InputSourceEndBehavior"
