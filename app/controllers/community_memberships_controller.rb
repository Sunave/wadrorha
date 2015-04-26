class CommunityMembershipsController < ApplicationController
  before_action :set_community_membership, only: [:show, :edit, :update, :destroy]

  # GET /community_memberships
  # GET /community_memberships.json
  def index
    @community_memberships = CommunityMembership.all
  end

  # GET /community_memberships/1
  # GET /community_memberships/1.json
  def show
  end

  # GET /community_memberships/new
  def new
    @community_membership = CommunityMembership.new
  end

  # GET /community_memberships/1/edit
  def edit
  end

  # POST /community_memberships
  # POST /community_memberships.json
  def create
    @community_membership = CommunityMembership.new params.require(:community_membership).permit(:community_id)
    @community_membership.user_id = current_user.id

    respond_to do |format|
      if @community_membership.save
        format.html { redirect_to @community_membership.community, notice: 'Welcome to community.' }
        format.json { render :show, status: :created, location: @community_membership }
      else
        format.html { render :new }
        format.json { render json: @community_membership.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /community_memberships/1
  # PATCH/PUT /community_memberships/1.json
  def update
    respond_to do |format|
      if @community_membership.update(community_membership_params)
        format.html { redirect_to @community_membership, notice: 'Community membership was successfully updated.' }
        format.json { render :show, status: :ok, location: @community_membership }
      else
        format.html { render :edit }
        format.json { render json: @community_membership.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /community_memberships/1
  # DELETE /community_memberships/1.json
  def destroy
    @community_membership.destroy
    respond_to do |format|
      format.html { redirect_to current_user, notice: "Membership in #{@community_membership.community.name} ended."}
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_community_membership
      @community_membership = CommunityMembership.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def community_membership_params
      params.require(:community_membership).permit(:user_id, :community_id)
    end
end
