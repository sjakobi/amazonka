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
-- Module      : Network.AWS.CloudFormation.Types.Visibility
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CloudFormation.Types.Visibility
  ( Visibility
      ( ..,
        VisibilityPRIVATE,
        VisibilityPUBLIC
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype Visibility = Visibility'
  { fromVisibility ::
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

pattern VisibilityPRIVATE :: Visibility
pattern VisibilityPRIVATE = Visibility' "PRIVATE"

pattern VisibilityPUBLIC :: Visibility
pattern VisibilityPUBLIC = Visibility' "PUBLIC"

{-# COMPLETE
  VisibilityPRIVATE,
  VisibilityPUBLIC,
  Visibility'
  #-}

instance Prelude.FromText Visibility where
  parser = Visibility' Prelude.<$> Prelude.takeText

instance Prelude.ToText Visibility where
  toText (Visibility' x) = x

instance Prelude.Hashable Visibility

instance Prelude.NFData Visibility

instance Prelude.ToByteString Visibility

instance Prelude.ToQuery Visibility

instance Prelude.ToHeader Visibility

instance Prelude.FromXML Visibility where
  parseXML = Prelude.parseXMLText "Visibility"
