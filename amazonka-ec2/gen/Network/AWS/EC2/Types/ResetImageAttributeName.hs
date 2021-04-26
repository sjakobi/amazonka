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
-- Module      : Network.AWS.EC2.Types.ResetImageAttributeName
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EC2.Types.ResetImageAttributeName
  ( ResetImageAttributeName
      ( ..,
        ResetImageAttributeNameLaunchPermission
      ),
  )
where

import Network.AWS.EC2.Internal
import qualified Network.AWS.Prelude as Prelude

newtype ResetImageAttributeName = ResetImageAttributeName'
  { fromResetImageAttributeName ::
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

pattern ResetImageAttributeNameLaunchPermission :: ResetImageAttributeName
pattern ResetImageAttributeNameLaunchPermission = ResetImageAttributeName' "launchPermission"

{-# COMPLETE
  ResetImageAttributeNameLaunchPermission,
  ResetImageAttributeName'
  #-}

instance Prelude.FromText ResetImageAttributeName where
  parser = ResetImageAttributeName' Prelude.<$> Prelude.takeText

instance Prelude.ToText ResetImageAttributeName where
  toText (ResetImageAttributeName' x) = x

instance Prelude.Hashable ResetImageAttributeName

instance Prelude.NFData ResetImageAttributeName

instance Prelude.ToByteString ResetImageAttributeName

instance Prelude.ToQuery ResetImageAttributeName

instance Prelude.ToHeader ResetImageAttributeName
