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
-- Module      : Network.AWS.EC2.Types.FpgaImageAttributeName
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EC2.Types.FpgaImageAttributeName
  ( FpgaImageAttributeName
      ( ..,
        FpgaImageAttributeNameDescription,
        FpgaImageAttributeNameLoadPermission,
        FpgaImageAttributeNameName,
        FpgaImageAttributeNameProductCodes
      ),
  )
where

import Network.AWS.EC2.Internal
import qualified Network.AWS.Prelude as Prelude

newtype FpgaImageAttributeName = FpgaImageAttributeName'
  { fromFpgaImageAttributeName ::
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

pattern FpgaImageAttributeNameDescription :: FpgaImageAttributeName
pattern FpgaImageAttributeNameDescription = FpgaImageAttributeName' "description"

pattern FpgaImageAttributeNameLoadPermission :: FpgaImageAttributeName
pattern FpgaImageAttributeNameLoadPermission = FpgaImageAttributeName' "loadPermission"

pattern FpgaImageAttributeNameName :: FpgaImageAttributeName
pattern FpgaImageAttributeNameName = FpgaImageAttributeName' "name"

pattern FpgaImageAttributeNameProductCodes :: FpgaImageAttributeName
pattern FpgaImageAttributeNameProductCodes = FpgaImageAttributeName' "productCodes"

{-# COMPLETE
  FpgaImageAttributeNameDescription,
  FpgaImageAttributeNameLoadPermission,
  FpgaImageAttributeNameName,
  FpgaImageAttributeNameProductCodes,
  FpgaImageAttributeName'
  #-}

instance Prelude.FromText FpgaImageAttributeName where
  parser = FpgaImageAttributeName' Prelude.<$> Prelude.takeText

instance Prelude.ToText FpgaImageAttributeName where
  toText (FpgaImageAttributeName' x) = x

instance Prelude.Hashable FpgaImageAttributeName

instance Prelude.NFData FpgaImageAttributeName

instance Prelude.ToByteString FpgaImageAttributeName

instance Prelude.ToQuery FpgaImageAttributeName

instance Prelude.ToHeader FpgaImageAttributeName
