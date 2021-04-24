{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CloudFront.Types.FieldLevelEncryptionConfig
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CloudFront.Types.FieldLevelEncryptionConfig where

import Network.AWS.CloudFront.Types.ContentTypeProfileConfig
import Network.AWS.CloudFront.Types.QueryArgProfileConfig
import Network.AWS.Lens
import Network.AWS.Prelude

-- | A complex data type that includes the profile configurations specified for field-level encryption.
--
--
--
-- /See:/ 'fieldLevelEncryptionConfig' smart constructor.
data FieldLevelEncryptionConfig = FieldLevelEncryptionConfig'
  { _flecComment ::
      !(Maybe Text),
    _flecContentTypeProfileConfig ::
      !( Maybe
           ContentTypeProfileConfig
       ),
    _flecQueryArgProfileConfig ::
      !( Maybe
           QueryArgProfileConfig
       ),
    _flecCallerReference ::
      !Text
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'FieldLevelEncryptionConfig' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'flecComment' - An optional comment about the configuration.
--
-- * 'flecContentTypeProfileConfig' - A complex data type that specifies when to forward content if a content type isn't recognized and profiles to use as by default in a request if a query argument doesn't specify a profile to use.
--
-- * 'flecQueryArgProfileConfig' - A complex data type that specifies when to forward content if a profile isn't found and the profile that can be provided as a query argument in a request.
--
-- * 'flecCallerReference' - A unique number that ensures the request can't be replayed.
fieldLevelEncryptionConfig ::
  -- | 'flecCallerReference'
  Text ->
  FieldLevelEncryptionConfig
fieldLevelEncryptionConfig pCallerReference_ =
  FieldLevelEncryptionConfig'
    { _flecComment = Nothing,
      _flecContentTypeProfileConfig = Nothing,
      _flecQueryArgProfileConfig = Nothing,
      _flecCallerReference = pCallerReference_
    }

-- | An optional comment about the configuration.
flecComment :: Lens' FieldLevelEncryptionConfig (Maybe Text)
flecComment = lens _flecComment (\s a -> s {_flecComment = a})

-- | A complex data type that specifies when to forward content if a content type isn't recognized and profiles to use as by default in a request if a query argument doesn't specify a profile to use.
flecContentTypeProfileConfig :: Lens' FieldLevelEncryptionConfig (Maybe ContentTypeProfileConfig)
flecContentTypeProfileConfig = lens _flecContentTypeProfileConfig (\s a -> s {_flecContentTypeProfileConfig = a})

-- | A complex data type that specifies when to forward content if a profile isn't found and the profile that can be provided as a query argument in a request.
flecQueryArgProfileConfig :: Lens' FieldLevelEncryptionConfig (Maybe QueryArgProfileConfig)
flecQueryArgProfileConfig = lens _flecQueryArgProfileConfig (\s a -> s {_flecQueryArgProfileConfig = a})

-- | A unique number that ensures the request can't be replayed.
flecCallerReference :: Lens' FieldLevelEncryptionConfig Text
flecCallerReference = lens _flecCallerReference (\s a -> s {_flecCallerReference = a})

instance FromXML FieldLevelEncryptionConfig where
  parseXML x =
    FieldLevelEncryptionConfig'
      <$> (x .@? "Comment")
      <*> (x .@? "ContentTypeProfileConfig")
      <*> (x .@? "QueryArgProfileConfig")
      <*> (x .@ "CallerReference")

instance Hashable FieldLevelEncryptionConfig

instance NFData FieldLevelEncryptionConfig

instance ToXML FieldLevelEncryptionConfig where
  toXML FieldLevelEncryptionConfig' {..} =
    mconcat
      [ "Comment" @= _flecComment,
        "ContentTypeProfileConfig"
          @= _flecContentTypeProfileConfig,
        "QueryArgProfileConfig"
          @= _flecQueryArgProfileConfig,
        "CallerReference" @= _flecCallerReference
      ]
