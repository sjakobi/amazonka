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
-- Module      : Network.AWS.Shield.Types.ProtectedResourceType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Shield.Types.ProtectedResourceType
  ( ProtectedResourceType
      ( ..,
        ProtectedResourceTypeAPPLICATIONLOADBALANCER,
        ProtectedResourceTypeCLASSICLOADBALANCER,
        ProtectedResourceTypeCLOUDFRONTDISTRIBUTION,
        ProtectedResourceTypeELASTICIPALLOCATION,
        ProtectedResourceTypeGLOBALACCELERATOR,
        ProtectedResourceTypeROUTE53HOSTEDZONE
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype ProtectedResourceType = ProtectedResourceType'
  { fromProtectedResourceType ::
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

pattern ProtectedResourceTypeAPPLICATIONLOADBALANCER :: ProtectedResourceType
pattern ProtectedResourceTypeAPPLICATIONLOADBALANCER = ProtectedResourceType' "APPLICATION_LOAD_BALANCER"

pattern ProtectedResourceTypeCLASSICLOADBALANCER :: ProtectedResourceType
pattern ProtectedResourceTypeCLASSICLOADBALANCER = ProtectedResourceType' "CLASSIC_LOAD_BALANCER"

pattern ProtectedResourceTypeCLOUDFRONTDISTRIBUTION :: ProtectedResourceType
pattern ProtectedResourceTypeCLOUDFRONTDISTRIBUTION = ProtectedResourceType' "CLOUDFRONT_DISTRIBUTION"

pattern ProtectedResourceTypeELASTICIPALLOCATION :: ProtectedResourceType
pattern ProtectedResourceTypeELASTICIPALLOCATION = ProtectedResourceType' "ELASTIC_IP_ALLOCATION"

pattern ProtectedResourceTypeGLOBALACCELERATOR :: ProtectedResourceType
pattern ProtectedResourceTypeGLOBALACCELERATOR = ProtectedResourceType' "GLOBAL_ACCELERATOR"

pattern ProtectedResourceTypeROUTE53HOSTEDZONE :: ProtectedResourceType
pattern ProtectedResourceTypeROUTE53HOSTEDZONE = ProtectedResourceType' "ROUTE_53_HOSTED_ZONE"

{-# COMPLETE
  ProtectedResourceTypeAPPLICATIONLOADBALANCER,
  ProtectedResourceTypeCLASSICLOADBALANCER,
  ProtectedResourceTypeCLOUDFRONTDISTRIBUTION,
  ProtectedResourceTypeELASTICIPALLOCATION,
  ProtectedResourceTypeGLOBALACCELERATOR,
  ProtectedResourceTypeROUTE53HOSTEDZONE,
  ProtectedResourceType'
  #-}

instance Prelude.FromText ProtectedResourceType where
  parser = ProtectedResourceType' Prelude.<$> Prelude.takeText

instance Prelude.ToText ProtectedResourceType where
  toText (ProtectedResourceType' x) = x

instance Prelude.Hashable ProtectedResourceType

instance Prelude.NFData ProtectedResourceType

instance Prelude.ToByteString ProtectedResourceType

instance Prelude.ToQuery ProtectedResourceType

instance Prelude.ToHeader ProtectedResourceType

instance Prelude.ToJSON ProtectedResourceType where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON ProtectedResourceType where
  parseJSON = Prelude.parseJSONText "ProtectedResourceType"
