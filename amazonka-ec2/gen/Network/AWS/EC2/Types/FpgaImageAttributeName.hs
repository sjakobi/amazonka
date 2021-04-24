{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
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
        FIANDescription,
        FIANLoadPermission,
        FIANName,
        FIANProductCodes
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.EC2.Internal
import Network.AWS.Prelude

data FpgaImageAttributeName
  = FpgaImageAttributeName'
      ( CI
          Text
      )
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern FIANDescription :: FpgaImageAttributeName
pattern FIANDescription = FpgaImageAttributeName' "description"

pattern FIANLoadPermission :: FpgaImageAttributeName
pattern FIANLoadPermission = FpgaImageAttributeName' "loadPermission"

pattern FIANName :: FpgaImageAttributeName
pattern FIANName = FpgaImageAttributeName' "name"

pattern FIANProductCodes :: FpgaImageAttributeName
pattern FIANProductCodes = FpgaImageAttributeName' "productCodes"

{-# COMPLETE
  FIANDescription,
  FIANLoadPermission,
  FIANName,
  FIANProductCodes,
  FpgaImageAttributeName'
  #-}

instance FromText FpgaImageAttributeName where
  parser = (FpgaImageAttributeName' . mk) <$> takeText

instance ToText FpgaImageAttributeName where
  toText (FpgaImageAttributeName' ci) = original ci

instance Hashable FpgaImageAttributeName

instance NFData FpgaImageAttributeName

instance ToByteString FpgaImageAttributeName

instance ToQuery FpgaImageAttributeName

instance ToHeader FpgaImageAttributeName
