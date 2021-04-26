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
-- Module      : Network.AWS.SSM.Types.Fault
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SSM.Types.Fault
  ( Fault
      ( ..,
        FaultClient,
        FaultServer,
        FaultUnknown
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype Fault = Fault' {fromFault :: Prelude.Text}
  deriving
    ( Prelude.Eq,
      Prelude.Ord,
      Prelude.Read,
      Prelude.Show,
      Prelude.Data,
      Prelude.Typeable,
      Prelude.Generic
    )

pattern FaultClient :: Fault
pattern FaultClient = Fault' "Client"

pattern FaultServer :: Fault
pattern FaultServer = Fault' "Server"

pattern FaultUnknown :: Fault
pattern FaultUnknown = Fault' "Unknown"

{-# COMPLETE
  FaultClient,
  FaultServer,
  FaultUnknown,
  Fault'
  #-}

instance Prelude.FromText Fault where
  parser = Fault' Prelude.<$> Prelude.takeText

instance Prelude.ToText Fault where
  toText (Fault' x) = x

instance Prelude.Hashable Fault

instance Prelude.NFData Fault

instance Prelude.ToByteString Fault

instance Prelude.ToQuery Fault

instance Prelude.ToHeader Fault

instance Prelude.FromJSON Fault where
  parseJSON = Prelude.parseJSONText "Fault"
