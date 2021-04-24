{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.XRay.Types.ValueWithServiceIds
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.XRay.Types.ValueWithServiceIds where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.XRay.Types.AnnotationValue
import Network.AWS.XRay.Types.ServiceId

-- | Information about a segment annotation.
--
--
--
-- /See:/ 'valueWithServiceIds' smart constructor.
data ValueWithServiceIds = ValueWithServiceIds'
  { _vwsiAnnotationValue ::
      !(Maybe AnnotationValue),
    _vwsiServiceIds ::
      !(Maybe [ServiceId])
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ValueWithServiceIds' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'vwsiAnnotationValue' - Values of the annotation.
--
-- * 'vwsiServiceIds' - Services to which the annotation applies.
valueWithServiceIds ::
  ValueWithServiceIds
valueWithServiceIds =
  ValueWithServiceIds'
    { _vwsiAnnotationValue =
        Nothing,
      _vwsiServiceIds = Nothing
    }

-- | Values of the annotation.
vwsiAnnotationValue :: Lens' ValueWithServiceIds (Maybe AnnotationValue)
vwsiAnnotationValue = lens _vwsiAnnotationValue (\s a -> s {_vwsiAnnotationValue = a})

-- | Services to which the annotation applies.
vwsiServiceIds :: Lens' ValueWithServiceIds [ServiceId]
vwsiServiceIds = lens _vwsiServiceIds (\s a -> s {_vwsiServiceIds = a}) . _Default . _Coerce

instance FromJSON ValueWithServiceIds where
  parseJSON =
    withObject
      "ValueWithServiceIds"
      ( \x ->
          ValueWithServiceIds'
            <$> (x .:? "AnnotationValue")
            <*> (x .:? "ServiceIds" .!= mempty)
      )

instance Hashable ValueWithServiceIds

instance NFData ValueWithServiceIds
