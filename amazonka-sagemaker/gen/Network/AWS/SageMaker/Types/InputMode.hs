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
-- Module      : Network.AWS.SageMaker.Types.InputMode
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SageMaker.Types.InputMode
  ( InputMode
      ( ..,
        InputModeFile,
        InputModePipe
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype InputMode = InputMode'
  { fromInputMode ::
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

pattern InputModeFile :: InputMode
pattern InputModeFile = InputMode' "File"

pattern InputModePipe :: InputMode
pattern InputModePipe = InputMode' "Pipe"

{-# COMPLETE
  InputModeFile,
  InputModePipe,
  InputMode'
  #-}

instance Prelude.FromText InputMode where
  parser = InputMode' Prelude.<$> Prelude.takeText

instance Prelude.ToText InputMode where
  toText (InputMode' x) = x

instance Prelude.Hashable InputMode

instance Prelude.NFData InputMode

instance Prelude.ToByteString InputMode

instance Prelude.ToQuery InputMode

instance Prelude.ToHeader InputMode

instance Prelude.ToJSON InputMode where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON InputMode where
  parseJSON = Prelude.parseJSONText "InputMode"
