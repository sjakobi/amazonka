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
-- Module      : Network.AWS.EC2.Types.SelfServicePortal
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EC2.Types.SelfServicePortal
  ( SelfServicePortal
      ( ..,
        SelfServicePortalDisabled,
        SelfServicePortalEnabled
      ),
  )
where

import Network.AWS.EC2.Internal
import qualified Network.AWS.Prelude as Prelude

newtype SelfServicePortal = SelfServicePortal'
  { fromSelfServicePortal ::
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

pattern SelfServicePortalDisabled :: SelfServicePortal
pattern SelfServicePortalDisabled = SelfServicePortal' "disabled"

pattern SelfServicePortalEnabled :: SelfServicePortal
pattern SelfServicePortalEnabled = SelfServicePortal' "enabled"

{-# COMPLETE
  SelfServicePortalDisabled,
  SelfServicePortalEnabled,
  SelfServicePortal'
  #-}

instance Prelude.FromText SelfServicePortal where
  parser = SelfServicePortal' Prelude.<$> Prelude.takeText

instance Prelude.ToText SelfServicePortal where
  toText (SelfServicePortal' x) = x

instance Prelude.Hashable SelfServicePortal

instance Prelude.NFData SelfServicePortal

instance Prelude.ToByteString SelfServicePortal

instance Prelude.ToQuery SelfServicePortal

instance Prelude.ToHeader SelfServicePortal
