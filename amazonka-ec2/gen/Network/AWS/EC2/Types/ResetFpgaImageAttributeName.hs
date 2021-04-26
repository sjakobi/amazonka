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
-- Module      : Network.AWS.EC2.Types.ResetFpgaImageAttributeName
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EC2.Types.ResetFpgaImageAttributeName
  ( ResetFpgaImageAttributeName
      ( ..,
        ResetFpgaImageAttributeNameLoadPermission
      ),
  )
where

import Network.AWS.EC2.Internal
import qualified Network.AWS.Prelude as Prelude

newtype ResetFpgaImageAttributeName = ResetFpgaImageAttributeName'
  { fromResetFpgaImageAttributeName ::
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

pattern ResetFpgaImageAttributeNameLoadPermission :: ResetFpgaImageAttributeName
pattern ResetFpgaImageAttributeNameLoadPermission = ResetFpgaImageAttributeName' "loadPermission"

{-# COMPLETE
  ResetFpgaImageAttributeNameLoadPermission,
  ResetFpgaImageAttributeName'
  #-}

instance Prelude.FromText ResetFpgaImageAttributeName where
  parser = ResetFpgaImageAttributeName' Prelude.<$> Prelude.takeText

instance Prelude.ToText ResetFpgaImageAttributeName where
  toText (ResetFpgaImageAttributeName' x) = x

instance Prelude.Hashable ResetFpgaImageAttributeName

instance Prelude.NFData ResetFpgaImageAttributeName

instance Prelude.ToByteString ResetFpgaImageAttributeName

instance Prelude.ToQuery ResetFpgaImageAttributeName

instance Prelude.ToHeader ResetFpgaImageAttributeName
