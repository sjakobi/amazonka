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
-- Module      : Network.AWS.GameLift.Types.FlexMatchMode
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.GameLift.Types.FlexMatchMode
  ( FlexMatchMode
      ( ..,
        FlexMatchModeSTANDALONE,
        FlexMatchModeWITHQUEUE
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype FlexMatchMode = FlexMatchMode'
  { fromFlexMatchMode ::
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

pattern FlexMatchModeSTANDALONE :: FlexMatchMode
pattern FlexMatchModeSTANDALONE = FlexMatchMode' "STANDALONE"

pattern FlexMatchModeWITHQUEUE :: FlexMatchMode
pattern FlexMatchModeWITHQUEUE = FlexMatchMode' "WITH_QUEUE"

{-# COMPLETE
  FlexMatchModeSTANDALONE,
  FlexMatchModeWITHQUEUE,
  FlexMatchMode'
  #-}

instance Prelude.FromText FlexMatchMode where
  parser = FlexMatchMode' Prelude.<$> Prelude.takeText

instance Prelude.ToText FlexMatchMode where
  toText (FlexMatchMode' x) = x

instance Prelude.Hashable FlexMatchMode

instance Prelude.NFData FlexMatchMode

instance Prelude.ToByteString FlexMatchMode

instance Prelude.ToQuery FlexMatchMode

instance Prelude.ToHeader FlexMatchMode

instance Prelude.ToJSON FlexMatchMode where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON FlexMatchMode where
  parseJSON = Prelude.parseJSONText "FlexMatchMode"
