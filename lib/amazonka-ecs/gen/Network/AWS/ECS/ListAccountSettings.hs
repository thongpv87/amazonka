{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-binds   #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}
{-# OPTIONS_GHC -fno-warn-deprecations   #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.ECS.ListAccountSettings
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists the account settings for a specified principal.
--
-- This operation returns paginated results.
module Network.AWS.ECS.ListAccountSettings
    (
    -- * Creating a request
      ListAccountSettings (..)
    , mkListAccountSettings
    -- ** Request lenses
    , lasEffectiveSettings
    , lasMaxResults
    , lasName
    , lasNextToken
    , lasPrincipalArn
    , lasValue

    -- * Destructuring the response
    , ListAccountSettingsResponse (..)
    , mkListAccountSettingsResponse
    -- ** Response lenses
    , lasrrsNextToken
    , lasrrsSettings
    , lasrrsResponseStatus
    ) where

import qualified Network.AWS.ECS.Types as Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Pager as Pager
import qualified Network.AWS.Prelude as Core
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'mkListAccountSettings' smart constructor.
data ListAccountSettings = ListAccountSettings'
  { effectiveSettings :: Core.Maybe Core.Bool
    -- ^ Specifies whether to return the effective settings. If @true@ , the account settings for the root user or the default setting for the @principalArn@ are returned. If @false@ , the account settings for the @principalArn@ are returned if they are set. Otherwise, no account settings are returned.
  , maxResults :: Core.Maybe Core.Int
    -- ^ The maximum number of account setting results returned by @ListAccountSettings@ in paginated output. When this parameter is used, @ListAccountSettings@ only returns @maxResults@ results in a single page along with a @nextToken@ response element. The remaining results of the initial request can be seen by sending another @ListAccountSettings@ request with the returned @nextToken@ value. This value can be between 1 and 10. If this parameter is not used, then @ListAccountSettings@ returns up to 10 results and a @nextToken@ value if applicable.
  , name :: Core.Maybe Types.SettingName
    -- ^ The name of the account setting you want to list the settings for.
  , nextToken :: Core.Maybe Core.Text
    -- ^ The @nextToken@ value returned from a @ListAccountSettings@ request indicating that more results are available to fulfill the request and further calls will be needed. If @maxResults@ was provided, it is possible the number of results to be fewer than @maxResults@ .
  , principalArn :: Core.Maybe Core.Text
    -- ^ The ARN of the principal, which can be an IAM user, IAM role, or the root user. If this field is omitted, the account settings are listed only for the authenticated user.
  , value :: Core.Maybe Core.Text
    -- ^ The value of the account settings with which to filter results. You must also specify an account setting name to use this parameter.
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.Hashable, Core.NFData)

-- | Creates a 'ListAccountSettings' value with any optional fields omitted.
mkListAccountSettings
    :: ListAccountSettings
mkListAccountSettings
  = ListAccountSettings'{effectiveSettings = Core.Nothing,
                         maxResults = Core.Nothing, name = Core.Nothing,
                         nextToken = Core.Nothing, principalArn = Core.Nothing,
                         value = Core.Nothing}

-- | Specifies whether to return the effective settings. If @true@ , the account settings for the root user or the default setting for the @principalArn@ are returned. If @false@ , the account settings for the @principalArn@ are returned if they are set. Otherwise, no account settings are returned.
--
-- /Note:/ Consider using 'effectiveSettings' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
lasEffectiveSettings :: Lens.Lens' ListAccountSettings (Core.Maybe Core.Bool)
lasEffectiveSettings = Lens.field @"effectiveSettings"
{-# INLINEABLE lasEffectiveSettings #-}
{-# DEPRECATED effectiveSettings "Use generic-lens or generic-optics with 'effectiveSettings' instead"  #-}

-- | The maximum number of account setting results returned by @ListAccountSettings@ in paginated output. When this parameter is used, @ListAccountSettings@ only returns @maxResults@ results in a single page along with a @nextToken@ response element. The remaining results of the initial request can be seen by sending another @ListAccountSettings@ request with the returned @nextToken@ value. This value can be between 1 and 10. If this parameter is not used, then @ListAccountSettings@ returns up to 10 results and a @nextToken@ value if applicable.
--
-- /Note:/ Consider using 'maxResults' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
lasMaxResults :: Lens.Lens' ListAccountSettings (Core.Maybe Core.Int)
lasMaxResults = Lens.field @"maxResults"
{-# INLINEABLE lasMaxResults #-}
{-# DEPRECATED maxResults "Use generic-lens or generic-optics with 'maxResults' instead"  #-}

-- | The name of the account setting you want to list the settings for.
--
-- /Note:/ Consider using 'name' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
lasName :: Lens.Lens' ListAccountSettings (Core.Maybe Types.SettingName)
lasName = Lens.field @"name"
{-# INLINEABLE lasName #-}
{-# DEPRECATED name "Use generic-lens or generic-optics with 'name' instead"  #-}

-- | The @nextToken@ value returned from a @ListAccountSettings@ request indicating that more results are available to fulfill the request and further calls will be needed. If @maxResults@ was provided, it is possible the number of results to be fewer than @maxResults@ .
--
-- /Note:/ Consider using 'nextToken' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
lasNextToken :: Lens.Lens' ListAccountSettings (Core.Maybe Core.Text)
lasNextToken = Lens.field @"nextToken"
{-# INLINEABLE lasNextToken #-}
{-# DEPRECATED nextToken "Use generic-lens or generic-optics with 'nextToken' instead"  #-}

-- | The ARN of the principal, which can be an IAM user, IAM role, or the root user. If this field is omitted, the account settings are listed only for the authenticated user.
--
-- /Note:/ Consider using 'principalArn' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
lasPrincipalArn :: Lens.Lens' ListAccountSettings (Core.Maybe Core.Text)
lasPrincipalArn = Lens.field @"principalArn"
{-# INLINEABLE lasPrincipalArn #-}
{-# DEPRECATED principalArn "Use generic-lens or generic-optics with 'principalArn' instead"  #-}

-- | The value of the account settings with which to filter results. You must also specify an account setting name to use this parameter.
--
-- /Note:/ Consider using 'value' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
lasValue :: Lens.Lens' ListAccountSettings (Core.Maybe Core.Text)
lasValue = Lens.field @"value"
{-# INLINEABLE lasValue #-}
{-# DEPRECATED value "Use generic-lens or generic-optics with 'value' instead"  #-}

instance Core.ToQuery ListAccountSettings where
        toQuery _ = Core.pure Core.mempty

instance Core.ToHeaders ListAccountSettings where
        toHeaders ListAccountSettings{..}
          = Core.pure
              ("X-Amz-Target",
               "AmazonEC2ContainerServiceV20141113.ListAccountSettings")
              Core.<> Core.pure ("Content-Type", "application/x-amz-json-1.1")

instance Core.FromJSON ListAccountSettings where
        toJSON ListAccountSettings{..}
          = Core.object
              (Core.catMaybes
                 [("effectiveSettings" Core..=) Core.<$> effectiveSettings,
                  ("maxResults" Core..=) Core.<$> maxResults,
                  ("name" Core..=) Core.<$> name,
                  ("nextToken" Core..=) Core.<$> nextToken,
                  ("principalArn" Core..=) Core.<$> principalArn,
                  ("value" Core..=) Core.<$> value])

instance Core.AWSRequest ListAccountSettings where
        type Rs ListAccountSettings = ListAccountSettingsResponse
        toRequest x@Core.Request{..}
          = Core.Request{Core._rqService = Types.mkServiceConfig,
                         Core._rqMethod = Request.POST, Core._rqPath = "/",
                         Core._rqQuery = Core.toQuery x, Core._rqHeaders = Core.toHeaders x,
                         Core._rqBody = Core.toJSONBody x}
        
        {-# INLINE toRequest #-}
        parseResponse
          = Response.receiveJSON
              (\ s h x ->
                 ListAccountSettingsResponse' Core.<$>
                   (x Core..:? "nextToken") Core.<*> x Core..:? "settings" Core.<*>
                     Core.pure (Core.fromEnum s))
        
        {-# INLINE parseResponse #-}

instance Pager.AWSPager ListAccountSettings where
        page rq rs
          | Pager.stop (rs Lens.^. Lens.field @"nextToken") = Core.Nothing
          | Pager.stop (rs Lens.^? Lens.field @"settings" Core.. Lens._Just)
            = Core.Nothing
          | Core.otherwise =
            Core.Just
              (rq Core.&
                 Lens.field @"nextToken" Lens..~ rs Lens.^. Lens.field @"nextToken")

-- | /See:/ 'mkListAccountSettingsResponse' smart constructor.
data ListAccountSettingsResponse = ListAccountSettingsResponse'
  { nextToken :: Core.Maybe Core.Text
    -- ^ The @nextToken@ value to include in a future @ListAccountSettings@ request. When the results of a @ListAccountSettings@ request exceed @maxResults@ , this value can be used to retrieve the next page of results. This value is @null@ when there are no more results to return.
  , settings :: Core.Maybe [Types.Setting]
    -- ^ The account settings for the resource.
  , responseStatus :: Core.Int
    -- ^ The response status code.
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.Hashable, Core.NFData)

-- | Creates a 'ListAccountSettingsResponse' value with any optional fields omitted.
mkListAccountSettingsResponse
    :: Core.Int -- ^ 'responseStatus'
    -> ListAccountSettingsResponse
mkListAccountSettingsResponse responseStatus
  = ListAccountSettingsResponse'{nextToken = Core.Nothing,
                                 settings = Core.Nothing, responseStatus}

-- | The @nextToken@ value to include in a future @ListAccountSettings@ request. When the results of a @ListAccountSettings@ request exceed @maxResults@ , this value can be used to retrieve the next page of results. This value is @null@ when there are no more results to return.
--
-- /Note:/ Consider using 'nextToken' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
lasrrsNextToken :: Lens.Lens' ListAccountSettingsResponse (Core.Maybe Core.Text)
lasrrsNextToken = Lens.field @"nextToken"
{-# INLINEABLE lasrrsNextToken #-}
{-# DEPRECATED nextToken "Use generic-lens or generic-optics with 'nextToken' instead"  #-}

-- | The account settings for the resource.
--
-- /Note:/ Consider using 'settings' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
lasrrsSettings :: Lens.Lens' ListAccountSettingsResponse (Core.Maybe [Types.Setting])
lasrrsSettings = Lens.field @"settings"
{-# INLINEABLE lasrrsSettings #-}
{-# DEPRECATED settings "Use generic-lens or generic-optics with 'settings' instead"  #-}

-- | The response status code.
--
-- /Note:/ Consider using 'responseStatus' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
lasrrsResponseStatus :: Lens.Lens' ListAccountSettingsResponse Core.Int
lasrrsResponseStatus = Lens.field @"responseStatus"
{-# INLINEABLE lasrrsResponseStatus #-}
{-# DEPRECATED responseStatus "Use generic-lens or generic-optics with 'responseStatus' instead"  #-}
