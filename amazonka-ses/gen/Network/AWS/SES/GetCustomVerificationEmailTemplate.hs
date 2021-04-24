{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TypeFamilies #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SES.GetCustomVerificationEmailTemplate
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns the custom email verification template for the template name you specify.
--
--
-- For more information about custom verification email templates, see <https://docs.aws.amazon.com/ses/latest/DeveloperGuide/custom-verification-emails.html Using Custom Verification Email Templates> in the /Amazon SES Developer Guide/ .
--
-- You can execute this operation no more than once per second.
module Network.AWS.SES.GetCustomVerificationEmailTemplate
  ( -- * Creating a Request
    getCustomVerificationEmailTemplate,
    GetCustomVerificationEmailTemplate,

    -- * Request Lenses
    gcvetTemplateName,

    -- * Destructuring the Response
    getCustomVerificationEmailTemplateResponse,
    GetCustomVerificationEmailTemplateResponse,

    -- * Response Lenses
    gcvetrrsTemplateName,
    gcvetrrsTemplateSubject,
    gcvetrrsFromEmailAddress,
    gcvetrrsTemplateContent,
    gcvetrrsSuccessRedirectionURL,
    gcvetrrsFailureRedirectionURL,
    gcvetrrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.SES.Types

-- | Represents a request to retrieve an existing custom verification email template.
--
--
--
-- /See:/ 'getCustomVerificationEmailTemplate' smart constructor.
newtype GetCustomVerificationEmailTemplate = GetCustomVerificationEmailTemplate'
  { _gcvetTemplateName ::
      Text
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'GetCustomVerificationEmailTemplate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcvetTemplateName' - The name of the custom verification email template that you want to retrieve.
getCustomVerificationEmailTemplate ::
  -- | 'gcvetTemplateName'
  Text ->
  GetCustomVerificationEmailTemplate
getCustomVerificationEmailTemplate pTemplateName_ =
  GetCustomVerificationEmailTemplate'
    { _gcvetTemplateName =
        pTemplateName_
    }

-- | The name of the custom verification email template that you want to retrieve.
gcvetTemplateName :: Lens' GetCustomVerificationEmailTemplate Text
gcvetTemplateName = lens _gcvetTemplateName (\s a -> s {_gcvetTemplateName = a})

instance
  AWSRequest
    GetCustomVerificationEmailTemplate
  where
  type
    Rs GetCustomVerificationEmailTemplate =
      GetCustomVerificationEmailTemplateResponse
  request = postQuery ses
  response =
    receiveXMLWrapper
      "GetCustomVerificationEmailTemplateResult"
      ( \s h x ->
          GetCustomVerificationEmailTemplateResponse'
            <$> (x .@? "TemplateName")
            <*> (x .@? "TemplateSubject")
            <*> (x .@? "FromEmailAddress")
            <*> (x .@? "TemplateContent")
            <*> (x .@? "SuccessRedirectionURL")
            <*> (x .@? "FailureRedirectionURL")
            <*> (pure (fromEnum s))
      )

instance Hashable GetCustomVerificationEmailTemplate

instance NFData GetCustomVerificationEmailTemplate

instance ToHeaders GetCustomVerificationEmailTemplate where
  toHeaders = const mempty

instance ToPath GetCustomVerificationEmailTemplate where
  toPath = const "/"

instance ToQuery GetCustomVerificationEmailTemplate where
  toQuery GetCustomVerificationEmailTemplate' {..} =
    mconcat
      [ "Action"
          =: ("GetCustomVerificationEmailTemplate" :: ByteString),
        "Version" =: ("2010-12-01" :: ByteString),
        "TemplateName" =: _gcvetTemplateName
      ]

-- | The content of the custom verification email template.
--
--
--
-- /See:/ 'getCustomVerificationEmailTemplateResponse' smart constructor.
data GetCustomVerificationEmailTemplateResponse = GetCustomVerificationEmailTemplateResponse'
  { _gcvetrrsTemplateName ::
      !( Maybe
           Text
       ),
    _gcvetrrsTemplateSubject ::
      !( Maybe
           Text
       ),
    _gcvetrrsFromEmailAddress ::
      !( Maybe
           Text
       ),
    _gcvetrrsTemplateContent ::
      !( Maybe
           Text
       ),
    _gcvetrrsSuccessRedirectionURL ::
      !( Maybe
           Text
       ),
    _gcvetrrsFailureRedirectionURL ::
      !( Maybe
           Text
       ),
    _gcvetrrsResponseStatus ::
      !Int
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'GetCustomVerificationEmailTemplateResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcvetrrsTemplateName' - The name of the custom verification email template.
--
-- * 'gcvetrrsTemplateSubject' - The subject line of the custom verification email.
--
-- * 'gcvetrrsFromEmailAddress' - The email address that the custom verification email is sent from.
--
-- * 'gcvetrrsTemplateContent' - The content of the custom verification email.
--
-- * 'gcvetrrsSuccessRedirectionURL' - The URL that the recipient of the verification email is sent to if his or her address is successfully verified.
--
-- * 'gcvetrrsFailureRedirectionURL' - The URL that the recipient of the verification email is sent to if his or her address is not successfully verified.
--
-- * 'gcvetrrsResponseStatus' - -- | The response status code.
getCustomVerificationEmailTemplateResponse ::
  -- | 'gcvetrrsResponseStatus'
  Int ->
  GetCustomVerificationEmailTemplateResponse
getCustomVerificationEmailTemplateResponse
  pResponseStatus_ =
    GetCustomVerificationEmailTemplateResponse'
      { _gcvetrrsTemplateName =
          Nothing,
        _gcvetrrsTemplateSubject =
          Nothing,
        _gcvetrrsFromEmailAddress =
          Nothing,
        _gcvetrrsTemplateContent =
          Nothing,
        _gcvetrrsSuccessRedirectionURL =
          Nothing,
        _gcvetrrsFailureRedirectionURL =
          Nothing,
        _gcvetrrsResponseStatus =
          pResponseStatus_
      }

-- | The name of the custom verification email template.
gcvetrrsTemplateName :: Lens' GetCustomVerificationEmailTemplateResponse (Maybe Text)
gcvetrrsTemplateName = lens _gcvetrrsTemplateName (\s a -> s {_gcvetrrsTemplateName = a})

-- | The subject line of the custom verification email.
gcvetrrsTemplateSubject :: Lens' GetCustomVerificationEmailTemplateResponse (Maybe Text)
gcvetrrsTemplateSubject = lens _gcvetrrsTemplateSubject (\s a -> s {_gcvetrrsTemplateSubject = a})

-- | The email address that the custom verification email is sent from.
gcvetrrsFromEmailAddress :: Lens' GetCustomVerificationEmailTemplateResponse (Maybe Text)
gcvetrrsFromEmailAddress = lens _gcvetrrsFromEmailAddress (\s a -> s {_gcvetrrsFromEmailAddress = a})

-- | The content of the custom verification email.
gcvetrrsTemplateContent :: Lens' GetCustomVerificationEmailTemplateResponse (Maybe Text)
gcvetrrsTemplateContent = lens _gcvetrrsTemplateContent (\s a -> s {_gcvetrrsTemplateContent = a})

-- | The URL that the recipient of the verification email is sent to if his or her address is successfully verified.
gcvetrrsSuccessRedirectionURL :: Lens' GetCustomVerificationEmailTemplateResponse (Maybe Text)
gcvetrrsSuccessRedirectionURL = lens _gcvetrrsSuccessRedirectionURL (\s a -> s {_gcvetrrsSuccessRedirectionURL = a})

-- | The URL that the recipient of the verification email is sent to if his or her address is not successfully verified.
gcvetrrsFailureRedirectionURL :: Lens' GetCustomVerificationEmailTemplateResponse (Maybe Text)
gcvetrrsFailureRedirectionURL = lens _gcvetrrsFailureRedirectionURL (\s a -> s {_gcvetrrsFailureRedirectionURL = a})

-- | -- | The response status code.
gcvetrrsResponseStatus :: Lens' GetCustomVerificationEmailTemplateResponse Int
gcvetrrsResponseStatus = lens _gcvetrrsResponseStatus (\s a -> s {_gcvetrrsResponseStatus = a})

instance
  NFData
    GetCustomVerificationEmailTemplateResponse
