{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-binds   #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}
{-# OPTIONS_GHC -fno-warn-deprecations   #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.ServiceCatalog.UpdatePortfolio
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates the specified portfolio.
--
-- You cannot update a product that was shared with you.
module Network.AWS.ServiceCatalog.UpdatePortfolio
    (
    -- * Creating a request
      UpdatePortfolio (..)
    , mkUpdatePortfolio
    -- ** Request lenses
    , uId
    , uAcceptLanguage
    , uAddTags
    , uDescription
    , uDisplayName
    , uProviderName
    , uRemoveTags

    -- * Destructuring the response
    , UpdatePortfolioResponse (..)
    , mkUpdatePortfolioResponse
    -- ** Response lenses
    , ursPortfolioDetail
    , ursTags
    , ursResponseStatus
    ) where

import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Core
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response
import qualified Network.AWS.ServiceCatalog.Types as Types

-- | /See:/ 'mkUpdatePortfolio' smart constructor.
data UpdatePortfolio = UpdatePortfolio'
  { id :: Types.Id
    -- ^ The portfolio identifier.
  , acceptLanguage :: Core.Maybe Types.AcceptLanguage
    -- ^ The language code.
--
--
--     * @en@ - English (default)
--
--
--     * @jp@ - Japanese
--
--
--     * @zh@ - Chinese
--
--
  , addTags :: Core.Maybe [Types.Tag]
    -- ^ The tags to add.
  , description :: Core.Maybe Types.PortfolioDescription
    -- ^ The updated description of the portfolio.
  , displayName :: Core.Maybe Types.PortfolioDisplayName
    -- ^ The name to use for display purposes.
  , providerName :: Core.Maybe Types.ProviderName
    -- ^ The updated name of the portfolio provider.
  , removeTags :: Core.Maybe [Types.TagKey]
    -- ^ The tags to remove.
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.Hashable, Core.NFData)

-- | Creates a 'UpdatePortfolio' value with any optional fields omitted.
mkUpdatePortfolio
    :: Types.Id -- ^ 'id'
    -> UpdatePortfolio
mkUpdatePortfolio id
  = UpdatePortfolio'{id, acceptLanguage = Core.Nothing,
                     addTags = Core.Nothing, description = Core.Nothing,
                     displayName = Core.Nothing, providerName = Core.Nothing,
                     removeTags = Core.Nothing}

-- | The portfolio identifier.
--
-- /Note:/ Consider using 'id' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
uId :: Lens.Lens' UpdatePortfolio Types.Id
uId = Lens.field @"id"
{-# INLINEABLE uId #-}
{-# DEPRECATED id "Use generic-lens or generic-optics with 'id' instead"  #-}

-- | The language code.
--
--
--     * @en@ - English (default)
--
--
--     * @jp@ - Japanese
--
--
--     * @zh@ - Chinese
--
--
--
-- /Note:/ Consider using 'acceptLanguage' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
uAcceptLanguage :: Lens.Lens' UpdatePortfolio (Core.Maybe Types.AcceptLanguage)
uAcceptLanguage = Lens.field @"acceptLanguage"
{-# INLINEABLE uAcceptLanguage #-}
{-# DEPRECATED acceptLanguage "Use generic-lens or generic-optics with 'acceptLanguage' instead"  #-}

-- | The tags to add.
--
-- /Note:/ Consider using 'addTags' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
uAddTags :: Lens.Lens' UpdatePortfolio (Core.Maybe [Types.Tag])
uAddTags = Lens.field @"addTags"
{-# INLINEABLE uAddTags #-}
{-# DEPRECATED addTags "Use generic-lens or generic-optics with 'addTags' instead"  #-}

-- | The updated description of the portfolio.
--
-- /Note:/ Consider using 'description' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
uDescription :: Lens.Lens' UpdatePortfolio (Core.Maybe Types.PortfolioDescription)
uDescription = Lens.field @"description"
{-# INLINEABLE uDescription #-}
{-# DEPRECATED description "Use generic-lens or generic-optics with 'description' instead"  #-}

-- | The name to use for display purposes.
--
-- /Note:/ Consider using 'displayName' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
uDisplayName :: Lens.Lens' UpdatePortfolio (Core.Maybe Types.PortfolioDisplayName)
uDisplayName = Lens.field @"displayName"
{-# INLINEABLE uDisplayName #-}
{-# DEPRECATED displayName "Use generic-lens or generic-optics with 'displayName' instead"  #-}

-- | The updated name of the portfolio provider.
--
-- /Note:/ Consider using 'providerName' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
uProviderName :: Lens.Lens' UpdatePortfolio (Core.Maybe Types.ProviderName)
uProviderName = Lens.field @"providerName"
{-# INLINEABLE uProviderName #-}
{-# DEPRECATED providerName "Use generic-lens or generic-optics with 'providerName' instead"  #-}

-- | The tags to remove.
--
-- /Note:/ Consider using 'removeTags' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
uRemoveTags :: Lens.Lens' UpdatePortfolio (Core.Maybe [Types.TagKey])
uRemoveTags = Lens.field @"removeTags"
{-# INLINEABLE uRemoveTags #-}
{-# DEPRECATED removeTags "Use generic-lens or generic-optics with 'removeTags' instead"  #-}

instance Core.ToQuery UpdatePortfolio where
        toQuery _ = Core.pure Core.mempty

instance Core.ToHeaders UpdatePortfolio where
        toHeaders UpdatePortfolio{..}
          = Core.pure
              ("X-Amz-Target", "AWS242ServiceCatalogService.UpdatePortfolio")
              Core.<> Core.pure ("Content-Type", "application/x-amz-json-1.1")

instance Core.FromJSON UpdatePortfolio where
        toJSON UpdatePortfolio{..}
          = Core.object
              (Core.catMaybes
                 [Core.Just ("Id" Core..= id),
                  ("AcceptLanguage" Core..=) Core.<$> acceptLanguage,
                  ("AddTags" Core..=) Core.<$> addTags,
                  ("Description" Core..=) Core.<$> description,
                  ("DisplayName" Core..=) Core.<$> displayName,
                  ("ProviderName" Core..=) Core.<$> providerName,
                  ("RemoveTags" Core..=) Core.<$> removeTags])

instance Core.AWSRequest UpdatePortfolio where
        type Rs UpdatePortfolio = UpdatePortfolioResponse
        toRequest x@Core.Request{..}
          = Core.Request{Core._rqService = Types.mkServiceConfig,
                         Core._rqMethod = Request.POST, Core._rqPath = "/",
                         Core._rqQuery = Core.toQuery x, Core._rqHeaders = Core.toHeaders x,
                         Core._rqBody = Core.toJSONBody x}
        
        {-# INLINE toRequest #-}
        parseResponse
          = Response.receiveJSON
              (\ s h x ->
                 UpdatePortfolioResponse' Core.<$>
                   (x Core..:? "PortfolioDetail") Core.<*> x Core..:? "Tags" Core.<*>
                     Core.pure (Core.fromEnum s))
        
        {-# INLINE parseResponse #-}

-- | /See:/ 'mkUpdatePortfolioResponse' smart constructor.
data UpdatePortfolioResponse = UpdatePortfolioResponse'
  { portfolioDetail :: Core.Maybe Types.PortfolioDetail
    -- ^ Information about the portfolio.
  , tags :: Core.Maybe [Types.Tag]
    -- ^ Information about the tags associated with the portfolio.
  , responseStatus :: Core.Int
    -- ^ The response status code.
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass Core.NFData

-- | Creates a 'UpdatePortfolioResponse' value with any optional fields omitted.
mkUpdatePortfolioResponse
    :: Core.Int -- ^ 'responseStatus'
    -> UpdatePortfolioResponse
mkUpdatePortfolioResponse responseStatus
  = UpdatePortfolioResponse'{portfolioDetail = Core.Nothing,
                             tags = Core.Nothing, responseStatus}

-- | Information about the portfolio.
--
-- /Note:/ Consider using 'portfolioDetail' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
ursPortfolioDetail :: Lens.Lens' UpdatePortfolioResponse (Core.Maybe Types.PortfolioDetail)
ursPortfolioDetail = Lens.field @"portfolioDetail"
{-# INLINEABLE ursPortfolioDetail #-}
{-# DEPRECATED portfolioDetail "Use generic-lens or generic-optics with 'portfolioDetail' instead"  #-}

-- | Information about the tags associated with the portfolio.
--
-- /Note:/ Consider using 'tags' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
ursTags :: Lens.Lens' UpdatePortfolioResponse (Core.Maybe [Types.Tag])
ursTags = Lens.field @"tags"
{-# INLINEABLE ursTags #-}
{-# DEPRECATED tags "Use generic-lens or generic-optics with 'tags' instead"  #-}

-- | The response status code.
--
-- /Note:/ Consider using 'responseStatus' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
ursResponseStatus :: Lens.Lens' UpdatePortfolioResponse Core.Int
ursResponseStatus = Lens.field @"responseStatus"
{-# INLINEABLE ursResponseStatus #-}
{-# DEPRECATED responseStatus "Use generic-lens or generic-optics with 'responseStatus' instead"  #-}
