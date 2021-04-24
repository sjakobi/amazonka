{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CognitoIdentityProvider.Types.UICustomizationType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CognitoIdentityProvider.Types.UICustomizationType where

import Network.AWS.Lens
import Network.AWS.Prelude

-- | A container for the UI customization information for a user pool's built-in app UI.
--
--
--
-- /See:/ 'uICustomizationType' smart constructor.
data UICustomizationType = UICustomizationType'
  { _uictLastModifiedDate ::
      !(Maybe POSIX),
    _uictClientId ::
      !(Maybe (Sensitive Text)),
    _uictCSSVersion ::
      !(Maybe Text),
    _uictUserPoolId ::
      !(Maybe Text),
    _uictCreationDate ::
      !(Maybe POSIX),
    _uictImageURL :: !(Maybe Text),
    _uictCSS :: !(Maybe Text)
  }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'UICustomizationType' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'uictLastModifiedDate' - The last-modified date for the UI customization.
--
-- * 'uictClientId' - The client ID for the client app.
--
-- * 'uictCSSVersion' - The CSS version number.
--
-- * 'uictUserPoolId' - The user pool ID for the user pool.
--
-- * 'uictCreationDate' - The creation date for the UI customization.
--
-- * 'uictImageURL' - The logo image for the UI customization.
--
-- * 'uictCSS' - The CSS values in the UI customization.
uICustomizationType ::
  UICustomizationType
uICustomizationType =
  UICustomizationType'
    { _uictLastModifiedDate =
        Nothing,
      _uictClientId = Nothing,
      _uictCSSVersion = Nothing,
      _uictUserPoolId = Nothing,
      _uictCreationDate = Nothing,
      _uictImageURL = Nothing,
      _uictCSS = Nothing
    }

-- | The last-modified date for the UI customization.
uictLastModifiedDate :: Lens' UICustomizationType (Maybe UTCTime)
uictLastModifiedDate = lens _uictLastModifiedDate (\s a -> s {_uictLastModifiedDate = a}) . mapping _Time

-- | The client ID for the client app.
uictClientId :: Lens' UICustomizationType (Maybe Text)
uictClientId = lens _uictClientId (\s a -> s {_uictClientId = a}) . mapping _Sensitive

-- | The CSS version number.
uictCSSVersion :: Lens' UICustomizationType (Maybe Text)
uictCSSVersion = lens _uictCSSVersion (\s a -> s {_uictCSSVersion = a})

-- | The user pool ID for the user pool.
uictUserPoolId :: Lens' UICustomizationType (Maybe Text)
uictUserPoolId = lens _uictUserPoolId (\s a -> s {_uictUserPoolId = a})

-- | The creation date for the UI customization.
uictCreationDate :: Lens' UICustomizationType (Maybe UTCTime)
uictCreationDate = lens _uictCreationDate (\s a -> s {_uictCreationDate = a}) . mapping _Time

-- | The logo image for the UI customization.
uictImageURL :: Lens' UICustomizationType (Maybe Text)
uictImageURL = lens _uictImageURL (\s a -> s {_uictImageURL = a})

-- | The CSS values in the UI customization.
uictCSS :: Lens' UICustomizationType (Maybe Text)
uictCSS = lens _uictCSS (\s a -> s {_uictCSS = a})

instance FromJSON UICustomizationType where
  parseJSON =
    withObject
      "UICustomizationType"
      ( \x ->
          UICustomizationType'
            <$> (x .:? "LastModifiedDate")
            <*> (x .:? "ClientId")
            <*> (x .:? "CSSVersion")
            <*> (x .:? "UserPoolId")
            <*> (x .:? "CreationDate")
            <*> (x .:? "ImageUrl")
            <*> (x .:? "CSS")
      )

instance Hashable UICustomizationType

instance NFData UICustomizationType
