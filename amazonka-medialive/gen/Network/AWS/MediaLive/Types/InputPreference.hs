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
-- Module      : Network.AWS.MediaLive.Types.InputPreference
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaLive.Types.InputPreference
  ( InputPreference
      ( ..,
        InputPreferenceEQUALINPUTPREFERENCE,
        InputPreferencePRIMARYINPUTPREFERRED
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

-- | Input preference when deciding which input to make active when a
-- previously failed input has recovered. If
-- \\\"EQUAL_INPUT_PREFERENCE\\\", then the active input will stay active
-- as long as it is healthy. If \\\"PRIMARY_INPUT_PREFERRED\\\", then
-- always switch back to the primary input when it is healthy.
newtype InputPreference = InputPreference'
  { fromInputPreference ::
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

pattern InputPreferenceEQUALINPUTPREFERENCE :: InputPreference
pattern InputPreferenceEQUALINPUTPREFERENCE = InputPreference' "EQUAL_INPUT_PREFERENCE"

pattern InputPreferencePRIMARYINPUTPREFERRED :: InputPreference
pattern InputPreferencePRIMARYINPUTPREFERRED = InputPreference' "PRIMARY_INPUT_PREFERRED"

{-# COMPLETE
  InputPreferenceEQUALINPUTPREFERENCE,
  InputPreferencePRIMARYINPUTPREFERRED,
  InputPreference'
  #-}

instance Prelude.FromText InputPreference where
  parser = InputPreference' Prelude.<$> Prelude.takeText

instance Prelude.ToText InputPreference where
  toText (InputPreference' x) = x

instance Prelude.Hashable InputPreference

instance Prelude.NFData InputPreference

instance Prelude.ToByteString InputPreference

instance Prelude.ToQuery InputPreference

instance Prelude.ToHeader InputPreference

instance Prelude.ToJSON InputPreference where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON InputPreference where
  parseJSON = Prelude.parseJSONText "InputPreference"
