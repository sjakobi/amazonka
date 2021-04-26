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
-- Module      : Network.AWS.SageMaker.Types.RootAccess
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SageMaker.Types.RootAccess
  ( RootAccess
      ( ..,
        RootAccessDisabled,
        RootAccessEnabled
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype RootAccess = RootAccess'
  { fromRootAccess ::
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

pattern RootAccessDisabled :: RootAccess
pattern RootAccessDisabled = RootAccess' "Disabled"

pattern RootAccessEnabled :: RootAccess
pattern RootAccessEnabled = RootAccess' "Enabled"

{-# COMPLETE
  RootAccessDisabled,
  RootAccessEnabled,
  RootAccess'
  #-}

instance Prelude.FromText RootAccess where
  parser = RootAccess' Prelude.<$> Prelude.takeText

instance Prelude.ToText RootAccess where
  toText (RootAccess' x) = x

instance Prelude.Hashable RootAccess

instance Prelude.NFData RootAccess

instance Prelude.ToByteString RootAccess

instance Prelude.ToQuery RootAccess

instance Prelude.ToHeader RootAccess

instance Prelude.ToJSON RootAccess where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON RootAccess where
  parseJSON = Prelude.parseJSONText "RootAccess"
